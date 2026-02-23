#!/usr/bin/env bash
set -euo pipefail

# Atomic kanban operations using flock.
# All write operations acquire an exclusive lock on LOCKFILE before editing.
# Read is lock-free.

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
KANBAN="$REPO_ROOT/meta/kanban.md"
LOCKFILE="$REPO_ROOT/meta/.kanban.lock"

VALID_AGENTS="physicist mathematician critic computationalist student"
VALID_SOURCES="or co cr ma ph st"

# Exit codes
# 0 = success
# 1 = no matching row
# 2 = row already claimed by someone else
# 3 = lock acquisition failed

die() { echo "ERROR: $*" >&2; exit 1; }

validate_agent() {
  local agent="$1"
  for a in $VALID_AGENTS; do
    [[ "$a" == "$agent" ]] && return 0
  done
  die "unknown agent '$agent' (valid: $VALID_AGENTS)"
}

validate_source() {
  local src="$1"
  for s in $VALID_SOURCES; do
    [[ "$s" == "$src" ]] && return 0
  done
  die "unknown source '$src' (valid: $VALID_SOURCES)"
}

validate_pattern() {
  local pattern="$1"
  [[ ${#pattern} -ge 3 ]] || die "pattern too short (min 3 chars): '$pattern'"
}

# Parse a kanban table row into columns.  Expects "| col1 | col2 | col3 |"
# Sets COLS array (0-indexed).
parse_row() {
  local line="$1"
  IFS='|' read -ra _parts <<< "$line"
  COLS=()
  for p in "${_parts[@]}"; do
    # trim leading/trailing whitespace
    p="${p#"${p%%[![:space:]]*}"}"
    p="${p%"${p##*[![:space:]]}"}"
    COLS+=("$p")
  done
}

# Return true if line is a data row (starts with |, not header/separator)
is_data_row() {
  local line="$1"
  [[ "$line" =~ ^\| ]] || return 1
  # skip separator (|---|)
  [[ "$line" =~ ^\|[[:space:]]*-+ ]] && return 1
  # skip header (contains "Assignee")
  [[ "$line" == *"Assignee"* ]] && return 1
  return 0
}

is_signal_line() {
  local line="$1"
  [[ "$line" =~ ^Orchestrator\ says: ]]
}

# ── Operations ──────────────────────────────────────────────────────────

cmd_read() {
  cat "$KANBAN"
}

cmd_claim() {
  local agent="$1" pattern="$2"
  validate_agent "$agent"
  validate_pattern "$pattern"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local found=0 matched_but_claimed=0 matched_line="" claimed_by=""

    while IFS= read -r line || [[ -n "$line" ]]; do
      if [[ $found -eq 0 ]] && is_data_row "$line"; then
        parse_row "$line"
        local assignee="${COLS[1]:-}"
        local task="${COLS[3]:-}"
        if [[ "$task" == *"$pattern"* ]]; then
          if [[ -z "$assignee" ]]; then
            # Unclaimed — claim it
            line="| $agent | ${COLS[2]:-} | ${COLS[3]:-} |"
            matched_line="$line"
            found=1
          else
            # Matched but already taken
            matched_but_claimed=1
            claimed_by="$assignee"
          fi
        fi
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    if [[ $found -eq 0 ]]; then
      rm -f "$tmpfile"
      if [[ $matched_but_claimed -eq 1 ]]; then
        echo "CONFLICT: row already claimed by '$claimed_by'" >&2
        exit 2
      fi
      echo "No row matching '$pattern'" >&2
      exit 1
    fi

    mv "$tmpfile" "$KANBAN"
    echo "$matched_line"
  ) 200>"$LOCKFILE"
}

cmd_propose() {
  local source="$1" task="$2"
  validate_source "$source"

  local new_row="| | $source | $task |"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local inserted=0

    while IFS= read -r line || [[ -n "$line" ]]; do
      if [[ $inserted -eq 0 ]] && is_signal_line "$line"; then
        printf '%s\n' "$new_row" >> "$tmpfile"
        inserted=1
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    # If no signal line, append after last line
    if [[ $inserted -eq 0 ]]; then
      printf '%s\n' "$new_row" >> "$tmpfile"
    fi

    mv "$tmpfile" "$KANBAN"
    echo "$new_row"
  ) 200>"$LOCKFILE"
}

cmd_self() {
  local agent="$1" source="$2" task="$3"
  validate_agent "$agent"
  validate_source "$source"

  local new_row="| $agent | $source | $task |"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local inserted=0

    while IFS= read -r line || [[ -n "$line" ]]; do
      if [[ $inserted -eq 0 ]] && is_signal_line "$line"; then
        printf '%s\n' "$new_row" >> "$tmpfile"
        inserted=1
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    if [[ $inserted -eq 0 ]]; then
      printf '%s\n' "$new_row" >> "$tmpfile"
    fi

    mv "$tmpfile" "$KANBAN"
    echo "$new_row"
  ) 200>"$LOCKFILE"
}

cmd_relinquish() {
  local agent="$1" pattern="$2"
  validate_agent "$agent"
  validate_pattern "$pattern"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local found=0 matched_line=""

    while IFS= read -r line || [[ -n "$line" ]]; do
      if [[ $found -eq 0 ]] && is_data_row "$line"; then
        parse_row "$line"
        local assignee="${COLS[1]:-}"
        local task="${COLS[3]:-}"
        if [[ "$assignee" == "$agent" && "$task" == *"$pattern"* ]]; then
          line="| | ${COLS[2]:-} | ${COLS[3]:-} |"
          matched_line="$line"
          found=1
        fi
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    if [[ $found -eq 0 ]]; then
      rm -f "$tmpfile"
      echo "No row assigned to '$agent' matching '$pattern'" >&2
      exit 1
    fi

    mv "$tmpfile" "$KANBAN"
    echo "$matched_line"
  ) 200>"$LOCKFILE"
}

cmd_done() {
  local pattern="$1"
  validate_pattern "$pattern"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local found=0 deleted_line=""

    while IFS= read -r line || [[ -n "$line" ]]; do
      if [[ $found -eq 0 ]] && is_data_row "$line"; then
        parse_row "$line"
        local task="${COLS[3]:-}"
        if [[ "$task" == *"$pattern"* ]]; then
          deleted_line="$line"
          found=1
          continue  # skip this line (delete it)
        fi
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    if [[ $found -eq 0 ]]; then
      rm -f "$tmpfile"
      echo "No row matching '$pattern'" >&2
      exit 1
    fi

    mv "$tmpfile" "$KANBAN"
    echo "DELETED: $deleted_line"
  ) 200>"$LOCKFILE"
}

cmd_signal() {
  local message="$1"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)
    local replaced=0

    while IFS= read -r line || [[ -n "$line" ]]; do
      if is_signal_line "$line"; then
        line="Orchestrator says:  $message"
        replaced=1
      fi
      printf '%s\n' "$line" >> "$tmpfile"
    done < "$KANBAN"

    if [[ $replaced -eq 0 ]]; then
      printf '\n%s\n' "Orchestrator says:  $message" >> "$tmpfile"
    fi

    mv "$tmpfile" "$KANBAN"
    echo "Orchestrator says:  $message"
  ) 200>"$LOCKFILE"
}

# ── Dispatch ────────────────────────────────────────────────────────────

usage() {
  cat <<'EOF'
Usage: kanban.sh <command> [args...]

Commands:
  read                              Show the kanban board
  claim  <agent> <pattern>          Claim an open task matching pattern
  propose <source> <task>           Add an unclaimed task row
  self   <agent> <source> <task>    Add a task row with agent pre-assigned
  relinquish <agent> <pattern>      Clear agent from a task row
  done   <pattern>                  Delete a completed task row
  signal <message>                  Update the orchestrator signal line

Exit codes: 0=success, 1=no match, 2=already claimed, 3=lock failure
EOF
}

cmd="${1:-}"
shift || true

case "$cmd" in
  read)       cmd_read ;;
  claim)      [[ $# -ge 2 ]] || die "usage: kanban.sh claim <agent> <pattern>"; cmd_claim "$1" "$2" ;;
  propose)    [[ $# -ge 2 ]] || die "usage: kanban.sh propose <source> <task>"; cmd_propose "$1" "$2" ;;
  self)       [[ $# -ge 3 ]] || die "usage: kanban.sh self <agent> <source> <task>"; cmd_self "$1" "$2" "$3" ;;
  relinquish) [[ $# -ge 2 ]] || die "usage: kanban.sh relinquish <agent> <pattern>"; cmd_relinquish "$1" "$2" ;;
  done)       [[ $# -ge 1 ]] || die "usage: kanban.sh done <pattern>"; cmd_done "$1" ;;
  signal)     [[ $# -ge 1 ]] || die "usage: kanban.sh signal <message>"; cmd_signal "$1" ;;
  help|--help|-h) usage ;;
  *)          usage; exit 1 ;;
esac
