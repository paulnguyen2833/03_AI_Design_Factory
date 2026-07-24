# Project

AI Design Factory (ADF) is a version-controlled operating system for turning
product ideas into manufacturable, testable, and market-ready products with AI
assistance. AI agents support the Product Owner (PO); they do not replace the
PO's authority.

This file contains agent operating instructions only. Project knowledge belongs
in the relevant repository module.

## Source of Truth Priority

When sources conflict, use this order:

1. PO-approved Product Specification in `06_specifications/`.
2. Approved Decision records in `11_decision_log/`.
3. Approved architecture and lifecycle documents.
4. The active task, limited to its authorized scope.
5. Validated mechanical rules, experiments, and AI Memory.
6. Other repository documentation and knowledge-base material.

Approval must be explicit and recorded. A draft, example, template, backlog
item, prompt, or AI suggestion is not an approved requirement. If a conflict
cannot be resolved by this order, stop the affected work and ask the PO.

## Files to Read Before Working

Inspect the repository and read only the relevant available files. Do not assume
that any named file exists. When available, read:

- `docs/PROJECT_CHARTER.md`
- `docs/SYSTEM_ARCHITECTURE.md`
- `docs/COMMUNICATION_PROTOCOL.md`
- `docs/PRODUCT_LIFECYCLE.md`
- `docs/GOVERNANCE.md`
- The active task.
- The relevant Product Specification under `06_specifications/`.
- Related approved decisions, issues, experiments, and mechanical rules.

## Working Rules

- Work only within the active task's objective, deliverables, and scope.
- Never modify an approved requirement without a new PO-approved decision.
- Never delete project documentation or business records; archive them in
  `16_archive/` and preserve their IDs and history.
- Extend existing documentation and structure instead of replacing or
  duplicating them.
- Keep changes minimal, reviewable, and consistent with repository conventions.
- Preserve unrelated and user-created changes in the working tree.
- State assumptions; never invent requirements, measurements, approvals, test
  results, or evidence.
- Record material choices and their reasons in `11_decision_log/`.
- Record discovered defects or blockers in `10_issue_tracker/` when the active
  task authorizes tracker updates; otherwise report them.
- Keep affected specifications, task status, issues, experiments, and AI Memory
  synchronized when those updates are in scope.
- Propose multiple options for design decisions, as required by governance.
- Do not claim physical validation without evidence supplied or confirmed by
  the PO.

## Approval Rules

Only the Product Owner may approve:

- Requirements and Product Specifications.
- Product concepts.
- Mechanical designs.
- Acceptance of physical test results and risks.
- Production or release readiness.
- Marketplace publication.

AI agents may prepare, review, compare, and recommend, but must leave approval
states pending until the PO explicitly approves them.

## Validation

Run `./scripts/validate.sh` after in-scope changes when the script is available
and executable. Report its exact result. If it does not exist or cannot run,
report that clearly and perform relevant non-destructive checks where possible.
Do not mark work complete while hiding validation failures.

## Reporting Format

At the end of every task, report:

1. Summary.
2. Files changed.
3. Validation results.
4. Open issues or decisions required.
5. Suggested next task.

## Commit Rules

- Suggest one concise, conventional commit message describing the completed
  scope, for example: `docs: add ADF agent operating instructions`.
- Do not create, amend, squash, or push commits unless the PO explicitly asks.
- Do not include unrelated changes in a suggested or authorized commit.

## Things AI Must Never Do

- Delete or silently rewrite approved documents or their history.
- Reorganize the repository outside an explicitly approved task.
- Invent requirements, dimensions, evidence, decisions, or approval.
- Skip, bypass, or mark approval gates complete.
- Perform external actions without explicit authorization.
- Print, manufacture, publish, release, or list a product automatically.
- Purchase services, credits, materials, or equipment.
- Expose credentials, secrets, personal data, or confidential project data.
