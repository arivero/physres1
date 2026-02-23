#!/usr/bin/env bash
set -euo pipefail

# Atomic kanban operations using flock + grep/sed.
# All writes acquire an exclusive lock. Read is lock-free.
# BSD/macOS compatible: no GNU sed extensions, no sed -i.

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
KANBAN="$REPO_ROOT/meta/kanban.md"
LOCKFILE="$REPO_ROOT/meta/.kanban.lock"

VALID_AGENTS="physicist mathematician critic computationalist student"
VALID_SOURCES="or co cr ma ph st"

# Exit codes: 0=success, 1=no match, 2=already claimed, 3=lock failure

die() { echo "ERROR: $*" >&2; exit 1; }

validate_agent() {
  local a; for a in $VALID_AGENTS; do [[ "$a" == "$1" ]] && return 0; done
  die "unknown agent '$1' (valid: $VALID_AGENTS)"
}

validate_source() {
  local s; for s in $VALID_SOURCES; do [[ "$s" == "$1" ]] && return 0; done
  die "unknown source '$1' (valid: $VALID_SOURCES)"
}

validate_pattern() {
  [[ ${#1} -ge 3 ]] || die "pattern too short (min 3 chars): '$1'"
}

# ── Helpers (used inside flock, safe to chain) ────────────────────────

# First data row matching a fixed string; prints "lineno:row" or returns 1.
find_row() {
  local matches
  matches=$(grep -n '^|' "$KANBAN" \
    | grep -v '^[0-9]*:|[[:space:]]*-' \
    | grep -v 'Assignee' \
    | grep -F "$1") || return 1
  echo "$matches" | head -1
}

# Trimmed assignee from a "lineno:| assignee | … |" string.
row_assignee() { echo "$1" | cut -d'|' -f2 | tr -d ' \t'; }

# Insert a row before the signal line (or at end).  Writes to $2.
insert_before_signal() {
  local row="$1" out="$2"
  awk -v r="$row" '
    /^Orchestrator says:/ && !d { print r; d=1 }
    { print }
    END { if (!d) print r }
  ' "$KANBAN" > "$out"
}

# ── Commands ──────────────────────────────────────────────────────────

cmd_read() { cat "$KANBAN"; }

cmd_claim() {
  local agent="$1" pattern="$2"
  validate_agent "$agent"; validate_pattern "$pattern"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local match
    match=$(find_row "$pattern") || { echo "No row matching '$pattern'" >&2; exit 1; }

    local who; who=$(row_assignee "$match")
    if [[ -n "$who" ]]; then
      echo "CONFLICT: row already claimed by '$who'" >&2; exit 2
    fi

    local lineno="${match%%:*}" tmp; tmp=$(mktemp)
    sed "${lineno}s/^|[^|]*|/| ${agent} |/" "$KANBAN" > "$tmp"
    mv "$tmp" "$KANBAN"
    sed -n "${lineno}p" "$KANBAN"
  ) 200>"$LOCKFILE"
}

cmd_propose() {
  local source="$1" task="$2"
  validate_source "$source"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    if find_row "$task" >/dev/null 2>&1; then
      echo "Task already on board" >&2; exit 1
    fi

    local new_row="| | $source | $task |" tmp; tmp=$(mktemp)
    insert_before_signal "$new_row" "$tmp"
    mv "$tmp" "$KANBAN"
    echo "$new_row"
  ) 200>"$LOCKFILE"
}

cmd_self() {
  local agent="$1" source="$2" task="$3"
  validate_agent "$agent"; validate_source "$source"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    if find_row "$task" >/dev/null 2>&1; then
      echo "Task already on board" >&2; exit 1
    fi

    local new_row="| $agent | $source | $task |" tmp; tmp=$(mktemp)
    insert_before_signal "$new_row" "$tmp"
    mv "$tmp" "$KANBAN"
    echo "$new_row"
  ) 200>"$LOCKFILE"
}

cmd_relinquish() {
  local agent="$1" pattern="$2"
  validate_agent "$agent"; validate_pattern "$pattern"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local match
    match=$(find_row "$pattern") || { echo "No row matching '$pattern'" >&2; exit 1; }

    local who; who=$(row_assignee "$match")
    if [[ "$who" != "$agent" ]]; then
      echo "Row not assigned to '$agent' (assigned to '${who:-nobody}')" >&2; exit 1
    fi

    local lineno="${match%%:*}" tmp; tmp=$(mktemp)
    sed "${lineno}s/^|[^|]*|/| |/" "$KANBAN" > "$tmp"
    mv "$tmp" "$KANBAN"
    sed -n "${lineno}p" "$KANBAN"
  ) 200>"$LOCKFILE"
}

cmd_done() {
  local pattern="$1"
  validate_pattern "$pattern"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local match
    match=$(find_row "$pattern") || { echo "No row matching '$pattern'" >&2; exit 1; }

    local lineno="${match%%:*}" tmp; tmp=$(mktemp)
    sed "${lineno}d" "$KANBAN" > "$tmp"
    mv "$tmp" "$KANBAN"
    echo "DELETED: ${match#*:}"
  ) 200>"$LOCKFILE"
}

cmd_signal() {
  local message="$1"
  (
    flock -w 5 200 || { echo "ERROR: could not acquire lock" >&2; exit 3; }

    local tmp; tmp=$(mktemp)
    if grep -q '^Orchestrator says:' "$KANBAN"; then
      sed "s|^Orchestrator says:.*|Orchestrator says:  $message|" "$KANBAN" > "$tmp"
    else
      { cat "$KANBAN"; printf '\nOrchestrator says:  %s\n' "$message"; } > "$tmp"
    fi
    mv "$tmp" "$KANBAN"
    echo "Orchestrator says:  $message"
  ) 200>"$LOCKFILE"
}

# ── Dispatch ──────────────────────────────────────────────────────────

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

cmd="${1:-}"; shift || true
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
