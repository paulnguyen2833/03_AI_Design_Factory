# ADF Handoff Guide

**Version:** v0.1  
**Status:** Draft  
**Owner:** Product Owner

## 1. Purpose

This guide defines how to prepare, transfer, acknowledge, correct, and complete
a concise handoff between the Product Owner (PO), ChatGPT, Codex, and future ADF
agents. It operationalizes the `Handoff` message defined by
`docs/COMMUNICATION_PROTOCOL.md` so that a receiver can act on distilled
context and bounded authority without relying on inaccessible chat history.

This draft is a proposal. It does not approve itself, a task, an artifact, or a
product lifecycle gate.

## 2. Scope

This guide defines the semantic content and preparation procedure for an ADF
handoff package. It applies when responsibility for review, execution, or a
decision moves between participants.

The standard package is:

```text
handoffs/
└── YYYY-MM-DD_<product-or-scope>/
    ├── SUMMARY.md
    ├── DECISIONS.yaml
    ├── OPEN_QUESTIONS.md
    └── CODEX_TASK.md
```

This tree illustrates the package and naming pattern only. The actual
repository location must follow the receiving repository's existing
conventions. This guide does not create the directory, templates, a final YAML
schema, automation, an API, a queue, a database, a dashboard, or a GUI.

The guide does not redefine communication semantics, lifecycle stages,
approval gates, repository IDs, or versioning conventions.

## 3. Handoff Principles

- **Distilled context:** include only current information needed to understand,
  decide, or perform the bounded work.
- **Repository-backed authority:** reference authoritative versioned artifacts
  instead of copying or paraphrasing them as a substitute.
- **Explicit boundaries:** identify allowed actions, deliverables, exclusions,
  approval gates, validation, and prohibited external actions.
- **Traceability:** reference applicable Product, Task, Decision, Issue,
  Experiment, and artifact versions using existing repository conventions.
- **Separated certainty:** distinguish confirmed facts, approved requirements,
  proposed Decisions, open questions, and assumptions.
- **Minimum disclosure:** exclude unnecessary chat, personal information,
  confidential data, credentials, and secrets.
- **Receiver validation:** the receiver checks completeness, consistency, and
  authority before acting on affected work.
- **Preserved history:** correct or supersede material conclusions explicitly;
  do not silently rewrite prior authority or outcomes.

## 4. When a Handoff Is Required

A handoff is required when:

- bounded work transfers between the PO, ChatGPT, Codex, or another agent;
- the receiver cannot safely act from the active task and authoritative
  artifacts alone;
- a long or multi-channel discussion must be distilled into durable context;
- responsibility changes after a material Decision, scope change, or blocker;
- work resumes after interruption and current state is not self-evident;
- an external AI tool or future agent needs a controlled subset of context; or
- the active task has material approval gates, exclusions, dependencies, or
  open questions that must remain explicit.

## 5. When a Handoff Is Not Required

A new handoff package is not required when:

- the same participant continues a small, unambiguous task in the same active
  context;
- an authoritative artifact or task already contains all current information
  needed by the receiver;
- the communication is a simple question, status update, or result that does
  not transfer responsibility;
- creating a package would only duplicate repository content; or
- the proposed transfer has no authorized task or responsible receiver.

When a package is unnecessary, durable outcomes must still be recorded in their
authoritative repository artifacts as required by the Communication Protocol.

## 6. Roles and Responsibilities

### Product Owner

The PO supplies intent, priorities, constraints, decisions, approval records,
physical-world evidence, and any authority required for external actions. Only
the PO may grant the lifecycle approvals identified by `AGENTS.md` and
`docs/PRODUCT_LIFECYCLE.md`.

### Handoff Preparer

The preparer distills current context, verifies references, labels authority and
uncertainty, limits disclosed information, and defines the requested action.
The preparer must not convert assumptions or proposed Decisions into facts.

### Sender

The sender confirms the intended receiver, handoff purpose, current state,
scope, and requested acknowledgement. The sender remains responsible for
correcting known material errors.

### Receiver

The receiver validates the package against authoritative sources, acknowledges
what can be acted on, identifies conflicts or missing authority, and works only
within the bounded task scope. Codex and other AI receivers must not silently
answer PO-owned questions.

### Reviewer or Approver

A reviewer may check completeness and quality. Review or execution acceptance
does not grant lifecycle approval. Approval remains with the role and gate
defined by the governing ADF documents.

## 7. Handoff Package Components

| Component | Purpose |
|---|---|
| `SUMMARY.md` | Distilled current context and expected outcome |
| `DECISIONS.yaml` | Referenced material Decisions and their authority state |
| `OPEN_QUESTIONS.md` | Unresolved questions, owners, impact, and urgency |
| `CODEX_TASK.md` | Bounded execution instruction and acceptance conditions |

All four components form the standard package. A component may state that no
applicable items exist, but it must not be silently omitted when its absence
could hide authority, uncertainty, or scope.

## 8. Required Content of Each Component

### 8.1 `SUMMARY.md`

`SUMMARY.md` contains only distilled, current context:

- a **Handoff Metadata** section that makes the following fields identifiable:
  - Message type;
  - prepared by or sender;
  - intended receiver;
  - prepared date and time, including timezone when material;
  - related Product ID;
  - Task ID and related record IDs;
  - artifact and version when applicable;
  - authority level;
  - requested action;
  - communication state; and
  - superseded handoff, when applicable;
- purpose;
- current state;
- confirmed facts;
- approved requirements relevant to the handoff;
- constraints;
- completed work;
- expected outcome; and
- references to authoritative artifacts and versions.

It must not contain the full chat transcript, rejected ideas, obsolete
assumptions, unnecessary background, or unapproved Decisions presented as
facts. If a statement cannot be verified, label it as an assumption or move the
uncertainty to `OPEN_QUESTIONS.md`.

A metadata field may be marked `Not applicable`, but it must not be silently
omitted when its absence could change authority, scope, or interpretation.

### 8.2 `DECISIONS.yaml`

For every Decision material to the handoff, `DECISIONS.yaml` identifies:

- Decision ID;
- status;
- decision;
- rationale;
- alternatives considered;
- approver;
- approval date;
- supersedes or affected artifacts; and
- references.

Draft or proposed Decisions remain clearly marked and cannot be treated as
approved or used to override an approved requirement. Approval fields must not
be fabricated when a Decision is unapproved.

This guide defines semantic content only. Field spelling, types, validation
rules, and a final machine-readable schema belong to a future Data Schema task.

### 8.3 `OPEN_QUESTIONS.md`

For every unresolved question, `OPEN_QUESTIONS.md` identifies:

- Question ID;
- question;
- why it matters;
- responsible decision-maker;
- blocking or non-blocking status;
- required answer date, when applicable; and
- affected task or artifact.

Question identifiers must follow an existing applicable repository convention;
this guide does not introduce a new ID scheme. If none exists, use an
unambiguous local reference without claiming it is a governed ADF ID.

Codex must not silently answer questions owned by the PO. Work unaffected by a
non-blocking question may continue within authorized scope; work affected by a
blocking question pauses until it is resolved or the responsible authority
accepts a documented limitation.

### 8.4 `CODEX_TASK.md`

`CODEX_TASK.md` defines:

- Task ID and title;
- objective;
- authoritative inputs;
- authorized scope;
- allowed files or modules;
- deliverables;
- acceptance criteria;
- explicit exclusions;
- approval gates;
- validation requirements;
- reporting requirements; and
- external actions prohibited or explicitly authorized.

The task must name the expected receiver when material and distinguish
repository edits from external actions. It grants only the bounded execution
authority stated in the file. It cannot grant lifecycle approval or expand the
PO's approval authority to an AI agent.

## 9. Source-of-Truth and Authority Rules

1. Apply the source priority in `AGENTS.md` whenever sources conflict.
2. Raw chat history is supporting context, never an approved requirement.
3. A handoff does not override an approved Product Specification, approved
   Decision, or other higher-priority source.
4. `CODEX_TASK.md` authorizes only its explicit, bounded execution scope.
5. A handoff cannot approve requirements, concepts, mechanical designs,
   physical evidence or risk, release, publication, archive, or any other
   lifecycle gate.
6. Only the PO may grant the lifecycle approvals reserved to the PO.
7. Task completion and execution acceptance do not imply lifecycle approval.
8. Missing authority, invalid references, and unresolved conflicts must be
   reported and escalated according to `AGENTS.md`.
9. Repository presence, a commit, or a generated artifact does not prove
   approval without an explicit approval record.

## 10. Handoff Preparation Procedure

1. **Identify the transfer:** add the Handoff Metadata section to `SUMMARY.md`
   and identify the message type, sender, intended receiver, prepared date and
   time, related Product ID, Task and related record IDs, applicable artifact
   and version, authority level, requested action, communication state, and any
   superseded handoff. Mark fields `Not applicable` rather than silently
   omitting them when authority, scope, or interpretation could change.
2. **Locate authority:** identify the governing sources using the priority in
   `AGENTS.md`; verify exact IDs, artifact versions, and approval states.
3. **Distill current context:** prepare `SUMMARY.md` from authoritative facts
   and current work, excluding raw conversation and obsolete material.
4. **Extract Decisions:** add applicable Decision records and their actual
   statuses to `DECISIONS.yaml`.
5. **Expose uncertainty:** add unresolved questions, owners, impact, and
   blocking state to `OPEN_QUESTIONS.md`.
6. **Bound execution:** define objective, inputs, scope, files, deliverables,
   acceptance criteria, exclusions, gates, validation, reporting, and external
   actions in `CODEX_TASK.md`.
7. **Check consistency:** compare the four components for conflicting scope,
   stale versions, unsupported facts, hidden questions, or implied approvals.
8. **Check disclosure:** remove secrets, credentials, unnecessary personal
   information, confidential material, and irrelevant chat content.
9. **Place and identify:** use the handoff date and product or scope in the
   package name, then place it according to existing repository conventions.
10. **Request acknowledgement:** identify what the receiver must confirm before
    execution begins.

References must use the repository's existing Product, Task, Decision, Issue,
Experiment, and version conventions. This procedure must not invent a new
versioning or ID system.

## 11. Receiver Acknowledgement and Validation

Before acting, the receiver acknowledges:

- the Handoff Metadata is present, internally consistent, and sufficient to
  identify the sender, receiver, time, related records, authority, requested
  action, communication state, and any superseded handoff;
- any `Not applicable` metadata value is appropriate and no material field was
  silently omitted;
- the task and expected outcome understood;
- authoritative inputs located and readable;
- allowed files, actions, deliverables, and exclusions understood;
- relevant Decisions and approval states verified;
- blocking and non-blocking questions identified;
- approval gates and prohibited external actions understood;
- material source conflicts or missing authority reported; and
- required validation and completion report understood.

Acknowledgement means that the handoff is actionable within its stated scope.
It is not execution acceptance, approval of the handoff's conclusions, or
lifecycle approval.

If only part of the package is valid, the receiver must identify the valid
scope and pause affected work rather than silently selecting a convenient
interpretation.

## 12. Changes, Corrections, and Superseding Handoffs

The handoff package name identifies its preparation date and product or scope.
Its contents reference applicable artifact versions and governed IDs; the
package itself does not create a new version or ID convention.

For a minor factual correction that does not change authority or execution
scope:

- identify the incorrect statement and corrected statement;
- record the correction and date in the affected component or existing
  repository history; and
- notify the receiver if work may have relied on the error.

For a material change to objective, authority, requirements, Decision state,
scope, deliverables, acceptance criteria, exclusions, or approval gates:

- prepare a superseding handoff using repository conventions;
- identify the earlier handoff and affected artifacts;
- preserve the earlier record for traceability;
- state which conclusions or instructions are superseded; and
- require renewed receiver acknowledgement before affected work resumes.

Do not silently overwrite material conclusions. Preserve traceability without
retaining unnecessary raw chat content.

## 13. Blocked and Rejected Handoffs

A handoff is blocked when missing information, authority, evidence, an
authoritative source, or a responsible decision prevents safe execution. The
receiver records:

- the affected task or artifact;
- the exact blocker and impact;
- what valid work, if any, may continue;
- the participant able to resolve it; and
- the smallest clarification or authority required.

A handoff is rejected when the receiver or responsible authority determines
that it is invalid, conflicting, unsafe, outside scope, or unsuitable for the
requested action. Rejection must state the reason and affected scope. It must
not erase the package or convert rejected content into approved authority.

After correction, a material blocked or rejected handoff is superseded and
acknowledged again. Unaffected valid work remains preserved.

## 14. Security and Privacy

- Never place secrets, passwords, tokens, private keys, credentials, or
  authentication material in a handoff.
- Include personal or confidential information only when necessary, explicitly
  authorized, and permitted by applicable policy.
- Prefer references with appropriate access controls over copying sensitive
  source content.
- Give external tools and future agents only the minimum context needed for
  their authorized task.
- Remove irrelevant chat excerpts, personal details, hidden metadata, and
  secrets from examples and attachments.
- Report accidental exposure through the applicable security or Issue process;
  do not reproduce exposed values in the report.

## 15. Handoff Completion Criteria

A handoff is complete when:

- all four components exist in the applicable repository location;
- `SUMMARY.md` contains complete Handoff Metadata that makes the required
  common message metadata and any superseded handoff identifiable;
- `Not applicable` is used where appropriate and no metadata field whose
  absence could change authority, scope, or interpretation is silently omitted;
- the package date and product or scope are identifiable;
- current facts, approved requirements, Decisions, questions, and task
  boundaries are mutually consistent;
- authoritative artifacts, versions, and applicable IDs are referenced;
- authority, approval gates, and external-action restrictions are explicit;
- no known blocking conflict or missing authority is concealed;
- unnecessary chat and sensitive information are excluded;
- the receiver has acknowledged the actionable scope; and
- corrections or superseding references are recorded when applicable.

Handoff completion transfers usable context and bounded work. It does not mean
the task is complete, the deliverables are execution-accepted, or a lifecycle
gate is approved.

## 16. Example Handoff

The following fictional example demonstrates the four components without
creating files or prescribing a final schema.

### Example `SUMMARY.md`

```markdown
# Compact Sensor Stand Handoff

## Handoff Metadata
- Message type: Handoff
- Prepared by or sender: ChatGPT
- Intended receiver: Codex
- Prepared date and time: 2026-07-25 14:00 UTC
- Related Product ID: P042
- Task ID and related record IDs: T-042; D-021; E-014
- Artifact and version: Specification v0.3
- Authority level: Authorized execution
- Requested action: Perform the bounded printability review in CODEX_TASK.md
- Communication state: Authorized
- Superseded handoff: Not applicable

## Purpose
Prepare a printability review of the selected stand concept.

## Current state
Concept selection is approved; mechanical design has not been approved.

## Confirmed facts
- Product ID: P042.
- The device dimensions come from measurement record E-014.

## Approved requirements relevant to the handoff
- Use Specification v0.3 as the governing source.

## Constraints
- No printing, purchasing, release, or publication is authorized.

## Completed work
- Three concepts were compared.
- D-021 records the selected concept.

## Expected outcome
A review report listing printability risks and recommended design changes.

## Authoritative references
- `06_specifications/P042/SPECIFICATION_v0.3.md`
- Decision D-021
- Experiment E-014
```

### Example `DECISIONS.yaml`

```yaml
- decision_id: D-021
  status: Approved
  decision: Select the folded-base stand concept
  rationale: Best balance of stability, material use, and assembly simplicity
  alternatives_considered:
    - solid wedge
    - two-piece cradle
  approver: Product Owner
  approval_date: 2026-07-24
  supersedes_or_affected_artifacts:
    - Concept comparison v0.2
  references:
    - 11_decision_log/decisions.csv
```

The field layout above is illustrative semantic content, not the final machine
schema.

### Example `OPEN_QUESTIONS.md`

```markdown
# Open Questions

## OQ-local-1
- Question: Which approved filament should be used for the first prototype?
- Why it matters: Material affects wall and tolerance recommendations.
- Responsible decision-maker: Product Owner
- Status: Blocking
- Required answer date: Not set
- Affected task or artifact: Printability review for P042
```

`OQ-local-1` is an example local reference, not a new governed ADF ID
convention.

### Example `CODEX_TASK.md`

```markdown
# T-042 — Review Compact Sensor Stand Printability

## Objective
Review the selected concept against Specification v0.3.

## Authoritative inputs
- Specification v0.3
- Approved Decision D-021
- Measurement Experiment E-014

## Authorized scope
Analyze printability and prepare a review report.

## Allowed files or modules
- Product P042 design records
- Existing Issue records relevant to P042

## Deliverables
- Printability review with risks and recommendations

## Acceptance criteria
- Each finding references a specification criterion or identified assumption.
- Blocking unknowns are reported.

## Explicit exclusions
- Do not change approved requirements or select a material.

## Approval gates
- Mechanical design remains pending PO approval.

## Validation requirements
- Check repository references and run the repository validation command.

## Reporting requirements
- Report files changed, validation, limitations, and open questions.

## External actions
- Printing, purchasing, release, and publication are prohibited.
```

## 17. Relationship to Other Approved ADF Documents

`AGENTS.md` remains authoritative for source priority, operating boundaries,
approval authority, validation, and reporting. `docs/GOVERNANCE.md` remains
authoritative for governed IDs, versioning, standard record states, and history
rules.

`docs/COMMUNICATION_PROTOCOL.md` defines the meaning and minimum content of a
Handoff message. This guide provides the package and procedure for applying
that message without changing its semantics.

`docs/PRODUCT_LIFECYCLE.md` defines lifecycle stages, transitions, artifacts,
return paths, and PO approval gates. A handoff may reference those controls but
cannot change or approve them.

If these sources conflict, apply the priority in `AGENTS.md` and escalate any
unresolved conflict to the PO.

## 18. Future Extension

ADF may later define templates, a machine-readable Data Schema, validation
rules, specialized handoff variants, or automation through separately
authorized work. Any extension must:

- preserve the Communication Protocol's message meanings and authority;
- preserve lifecycle and PO approval boundaries;
- use existing repository ID and versioning conventions;
- define compatibility and migration for existing handoffs;
- minimize disclosure and retain correction history; and
- remain a proposal until reviewed and approved through the applicable process.
