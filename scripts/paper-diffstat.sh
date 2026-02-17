#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: paper-diffstat.sh [--cached]

Summarize line additions/deletions for draft manuscripts:
  - paper/main.md
  - papers/*/main.md

By default, reports the working tree diff. Use --cached to report staged changes
recommended for cycle logs just before committing.
EOF
}

mode="worktree"
diff_flags=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --cached|--staged)
      mode="cached"
      diff_flags+=(--cached)
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

numstat="$(git diff --numstat "${diff_flags[@]}" -- paper/main.md papers 2>/dev/null || true)"

awk -F $'\t' -v mode="$mode" '
  BEGIN {
    add_total = 0;
    del_total = 0;
    count = 0;
  }
  {
    add = $1;
    del = $2;
    file = $3;

    if (file == "paper/main.md" || file ~ /^papers\/.*\/main\.md$/) {
      if (add == "-" || del == "-") {
        next;
      }
      add_total += add;
      del_total += del;
      count++;
      adds[count] = add;
      dels[count] = del;
      files[count] = file;
    }
  }
  END {
    printf "paper-diffstat (%s): TOTAL +%d -%d (%d files)\n", mode, add_total, del_total, count;
    for (i = 1; i <= count; i++) {
      printf "  +%s -%s %s\n", adds[i], dels[i], files[i];
    }
  }
' <<<"$numstat"

