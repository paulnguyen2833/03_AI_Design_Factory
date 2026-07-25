#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"

required=(
  AGENTS.md
  README.md
  docs/GOVERNANCE.md
  docs/COMMUNICATION_PROTOCOL.md
  docs/PRODUCT_LIFECYCLE.md
  docs/HANDOFF_GUIDE.md
  docs/DATA_SCHEMA.md
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

if ! command -v python3 >/dev/null 2>&1; then
  echo "ERROR: validation-runtime: python3 is required for CSV-safe validation"
  failed=1
else
  if ! python3 - <<'PY'
import csv
import re
import sys
from pathlib import Path

errors = []


def error(file: str, rule: str, message: str) -> None:
    errors.append(f"ERROR: {file}: {rule}: {message}")


def read_csv(file):
    try:
        with open(file, encoding="utf-8-sig", newline="") as handle:
            parsed = list(csv.reader(handle, strict=True))
    except (OSError, UnicodeError, csv.Error) as exc:
        error(file, "csv-well-formed", str(exc))
        return [], []

    if not parsed:
        error(file, "csv-header", "file has no header")
        return [], []

    header = parsed[0]
    if not header or any(not column.strip() for column in header):
        error(file, "csv-header", "header contains an empty column name")

    rows = []
    for line_number, row in enumerate(parsed[1:], start=2):
        if not row or all(not value.strip() for value in row):
            continue
        if len(row) != len(header):
            error(
                file,
                "csv-column-count",
                f"line {line_number} has {len(row)} fields; expected {len(header)}",
            )
            continue
        rows.append((line_number, row))
    return header, rows


csv_specs = {
    "03_product_backlog/backlog.csv": "id",
    "04_sprint_board/board.csv": "task_id",
    "07_prompt_library/prompts.csv": "id",
    "10_issue_tracker/issues.csv": "id",
    "11_decision_log/decisions.csv": "id",
    "12_experiment_lab/experiments.csv": "id",
}

parsed_csv = {}
for file, id_column in csv_specs.items():
    header, rows = read_csv(file)
    parsed_csv[file] = (header, rows)
    if not header:
        continue
    if id_column not in header:
        error(file, "unique-id", f"missing ID column {id_column!r}")
        continue

    id_index = header.index(id_column)
    seen = {}
    for line_number, row in rows:
        record_id = row[id_index].strip()
        if not record_id:
            continue
        if record_id in seen:
            error(
                file,
                "unique-id",
                f"duplicate {record_id!r} on lines {seen[record_id]} and {line_number}",
            )
        else:
            seen[record_id] = line_number

decision_file = "11_decision_log/decisions.csv"
decision_header, decision_rows = parsed_csv.get(decision_file, ([], []))
decision_required = ("id", "date", "status", "decision", "reason", "approved_by")
if decision_header:
    missing_columns = [
        column for column in decision_required if column not in decision_header
    ]
    for column in missing_columns:
        error(
            decision_file,
            "approved-decision-integrity",
            f"missing required column {column!r}",
        )

    if not missing_columns:
        indexes = {
            column: decision_header.index(column) for column in decision_required
        }
        for line_number, row in decision_rows:
            if row[indexes["status"]].strip() != "Approved":
                continue
            for column in ("id", "date", "decision", "reason", "approved_by"):
                if not row[indexes[column]].strip():
                    error(
                        decision_file,
                        "approved-decision-integrity",
                        f"line {line_number} has empty {column!r}",
                    )

status_pattern = re.compile(
    r"^\s*(?:\*\*)?Status:(?:\*\*)?\s*Approved\s*$", re.MULTILINE
)
approved_by_pattern = re.compile(
    r"^\s*(?:\*\*)?Approved by:(?:\*\*)?\s*(\S.*?)\s*$", re.MULTILINE
)
approved_date_pattern = re.compile(
    r"^\s*(?:\*\*)?Approved date:(?:\*\*)?\s*(\S.*?)\s*$", re.MULTILINE
)

for path in sorted(Path("docs").rglob("*.md")):
    file = path.as_posix()
    try:
        content = path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as exc:
        error(file, "approved-document-metadata", str(exc))
        continue

    if not status_pattern.search(content):
        continue
    if not approved_by_pattern.search(content):
        error(
            file,
            "approved-document-metadata",
            "Status Approved requires non-empty Approved by",
        )
    if not approved_date_pattern.search(content):
        error(
            file,
            "approved-document-metadata",
            "Status Approved requires non-empty Approved date",
        )

for message in errors:
    print(message)

sys.exit(1 if errors else 0)
PY
  then
    failed=1
  fi
fi

if [[ "$failed" -ne 0 ]]; then
  exit 1
fi

echo "ADF validation passed."
