#!/usr/bin/env bash
set -euo pipefail

# Atomic kanban operations using flock + awk/sed.
# All write operations acquire an exclusive lock on LOCKFILE before editing.
# Read is lock-free.
# BSD/macOS compatible: no GNU sed extensions, no sed -i.

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

# ── awk helpers ─────────────────────────────────────────────────────────
# Data-row filter (used as awk pattern in every program):
#   /^\|/ && !/^\|[[:space:]]*-/ && !/Assignee/
# Column extraction:  split($0, f, "|")  then  gsub(/^[ \t]+|[ \t]+$/, "", f[N])

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

    local tmpfile ec=0 msg=""
    tmpfile=$(mktemp)

    msg=$(awk -v agent="$agent" -v pat="$pattern" '
      /^\|/ && !/^\|[[:space:]]*-/ && !/Assignee/ && !found && !conflict {
        split($0, f, "|")
        assignee = f[2]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", assignee)
        src      = f[3]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", src)
        task     = f[4]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", task)
        if (index(task, pat) > 0) {
          if (assignee == "") {
            $0 = "| " agent " | " src " | " task " |"
            found = 1
            print $0 > "/dev/stderr"
          } else {
            conflict = 1; claimed_by = assignee
          }
        }
      }
      { print }
      END {
        if (found) exit 0
        if (conflict) { print claimed_by > "/dev/stderr"; exit 2 }
        exit 1
      }
    ' "$KANBAN" 2>&1 >"$tmpfile") || ec=$?

    case $ec in
      0) mv "$tmpfile" "$KANBAN"; echo "$msg" ;;
      2) rm -f "$tmpfile"; echo "CONFLICT: row already claimed by '$msg'" >&2; exit 2 ;;
      *) rm -f "$tmpfile"; echo "No row matching '$pattern'" >&2; exit 1 ;;
    esac
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

    awk -v row="$new_row" '
      /^Orchestrator says:/ && !ins { print row; ins=1 }
      { print }
      END { if (!ins) print row }
    ' "$KANBAN" > "$tmpfile"

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

    awk -v row="$new_row" '
      /^Orchestrator says:/ && !ins { print row; ins=1 }
      { print }
      END { if (!ins) print row }
    ' "$KANBAN" > "$tmpfile"

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

    local tmpfile ec=0 msg=""
    tmpfile=$(mktemp)

    msg=$(awk -v agent="$agent" -v pat="$pattern" '
      /^\|/ && !/^\|[[:space:]]*-/ && !/Assignee/ && !found {
        split($0, f, "|")
        assignee = f[2]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", assignee)
        src      = f[3]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", src)
        task     = f[4]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", task)
        if (assignee == agent && index(task, pat) > 0) {
          $0 = "| | " src " | " task " |"
          found = 1
          print $0 > "/dev/stderr"
        }
      }
      { print }
      END { if (!found) exit 1 }
    ' "$KANBAN" 2>&1 >"$tmpfile") || ec=$?

    if [[ $ec -ne 0 ]]; then
      rm -f "$tmpfile"
      echo "No row assigned to '$agent' matching '$pattern'" >&2
      exit 1
    fi
    mv "$tmpfile" "$KANBAN"
    echo "$msg"
  ) 200>"$LOCKFILE"
}

cmd_done() {
  local pattern="$1"
  validate_pattern "$pattern"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile ec=0 msg=""
    tmpfile=$(mktemp)

    msg=$(awk -v pat="$pattern" '
      /^\|/ && !/^\|[[:space:]]*-/ && !/Assignee/ && !found {
        split($0, f, "|")
        task = f[4]; gsub(/^[[:space:]]+|[[:space:]]+$/, "", task)
        if (index(task, pat) > 0) { found=1; print $0 > "/dev/stderr"; next }
      }
      { print }
      END { if (!found) exit 1 }
    ' "$KANBAN" 2>&1 >"$tmpfile") || ec=$?

    if [[ $ec -ne 0 ]]; then
      rm -f "$tmpfile"
      echo "No row matching '$pattern'" >&2
      exit 1
    fi
    mv "$tmpfile" "$KANBAN"
    echo "DELETED: $msg"
  ) 200>"$LOCKFILE"
}

cmd_signal() {
  local message="$1"

  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmpfile
    tmpfile=$(mktemp)

    # sed s/// is BSD-compatible (no -i, no address ranges)
    if grep -q "^Orchestrator says:" "$KANBAN"; then
      sed "s|^Orchestrator says:.*|Orchestrator says:  $message|" "$KANBAN" > "$tmpfile"
    else
      { cat "$KANBAN"; printf '\nOrchestrator says:  %s\n' "$message"; } > "$tmpfile"
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
