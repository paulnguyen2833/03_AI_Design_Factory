#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"

required=(
  README.md
  docs/GOVERNANCE.md
  03_product_backlog/backlog.csv
  04_sprint_board/board.csv
  10_issue_tracker/issues.csv
  11_decision_log/decisions.csv
  12_experiment_lab/experiments.csv
  17_ai_memory/MEMORY.md
)

failed=0
for file in "${required[@]}"; do
  if [[ ! -s "$file" ]]; then
    echo "ERROR: missing or empty: $file"
    failed=1
  fi
done

check_unique_ids() {
  local file="$1"
  local duplicates
  duplicates="$(tail -n +2 "$file" | cut -d, -f1 | sed '/^$/d' | sort | uniq -d)"
  if [[ -n "$duplicates" ]]; then
    echo "ERROR: duplicate IDs in $file: $duplicates"
    failed=1
  fi
}

check_unique_ids 03_product_backlog/backlog.csv
check_unique_ids 10_issue_tracker/issues.csv
check_unique_ids 11_decision_log/decisions.csv
check_unique_ids 12_experiment_lab/experiments.csv

if [[ "$failed" -ne 0 ]]; then
  exit 1
fi

echo "ADF validation passed."

