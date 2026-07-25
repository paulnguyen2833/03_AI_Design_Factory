# ADF Data Standard

**Version:** v0.1  
**Status:** Approved  
**Owner:** Product Owner  
**Approved by:** Product Owner  
**Approved date:** 2026-07-25

## 1. Purpose

This document defines the semantic data standard for AI Design Factory (ADF).
It establishes how durable project information is represented, identified,
versioned, referenced, validated, and exchanged while remaining readable,
traceable, and governed.

Approval of this document establishes semantic meaning and format-selection
policy. It does not authorize implementation.

## 2. Scope

This standard applies to durable ADF artifacts, repository records, indexes,
handoffs, evidence, generated outputs, and references among them. It covers
semantic requirements shared by Markdown, YAML, CSV, future JSON interchange,
and binary artifacts.

It does not create exhaustive field schemas, JSON Schema, OpenAPI, database
tables, API contracts, workflow events, validators, migrations, directories,
runtime state, or automation. Existing files, columns, templates, and repository
layout remain unchanged.

## 3. Data Principles

- **Governed authority:** repository-backed durable records are authoritative
  only according to the source priority in `AGENTS.md` and their explicit
  approval state.
- **Human/machine traceability:** human-readable source and machine-readable
  data must reference one another sufficiently to identify their relationship,
  scope, and applicable versions.
- **No convenience copies:** do not duplicate an authoritative artifact merely
  to make it easier for an agent to consume. Use a reference and, when needed,
  a clearly bounded snapshot.
- **Stable identity:** governed IDs are stable, unique within their type, and
  never reused, including after archival.
- **Controlled change:** material changes create a new artifact version or a
  superseding record and preserve prior history.
- **Explicit semantic absence:** missing, unknown, not applicable, proposed,
  and approved are different states and must not be conflated.
- **Evidence boundaries:** generated output is not verified evidence. AI
  confidence is not physical validation.
- **Chat boundaries:** raw chat is supporting context, not a requirement,
  Decision, approval, or durable source of truth.
- **Schema boundaries:** schemas may validate structure but cannot grant
  authority, execution acceptance, or lifecycle approval.
- **Proportional requirements:** data requirements should be proportional to
  artifact risk and lifecycle stage without weakening mandatory traceability,
  safety, evidence, or approval requirements.
- **Source preservation:** preserve original values, units, formats, sources,
  and material limitations when data is transformed.

## 4. Artifact Classification

ADF data is classified by its role:

| Class | Examples | Semantic role |
|---|---|---|
| Governing | Policies, approved requirements, Product Specifications, approved Decisions | Defines binding direction within source priority |
| Operational | Tasks, Sprint records, handoffs, checklists | Authorizes or coordinates bounded execution |
| Product artifact | Concepts, designs, models, production files, releases | Represents product work and deliverables |
| Evidence | Measurements, photographs, Experiments, test results, source documents | Supports a claim with provenance and limitations |
| Tracker or index | Backlog, Issue, Decision, Prompt, marketplace, financial, KPI CSV | Provides flat status and references to detailed records |
| Generated output | AI text, model output, tool report, render | Candidate output requiring review or validation |
| Knowledge | Mechanical rules, knowledge base, AI Memory | Reusable conclusions with stated scope and evidence |
| External reference | Supplier record, marketplace listing, external identifier | Connects ADF records to an outside system |

An artifact may serve more than one class, but each use must keep its authority,
provenance, approval state, and governing source distinguishable.

## 5. Format Selection Rules

### 5.1 Markdown

Use Markdown for:

- human-readable policies and guides;
- requirements and Product Specifications where explanation is material;
- task instructions;
- summaries and open questions;
- design reviews and release notes.

Markdown metadata may appear in a clearly labeled header, table, or section.
Narrative text must not obscure approval state, version, or authoritative
references.

### 5.2 YAML

Use YAML for:

- concise structured handoff records;
- configuration-like artifacts; and
- structured Decisions or Specifications when human editing remains important.

YAML must not contain executable code, secrets, anchors or aliases that obscure
meaning, or implicit values that create ambiguity. Values such as dates,
booleans, nulls, and numeric-looking identifiers should be represented so their
intended semantics remain unambiguous. This document does not define a final
YAML schema. Date-like and timestamp-like values in machine-oriented YAML
examples must be explicitly quoted strings unless a future approved schema
specifies another representation.

### 5.3 CSV

Use CSV for:

- flat trackers and dashboards already present in the repository;
- the Sprint Board and backlog; and
- Issue, Decision, Experiment, Prompt, financial, KPI, and marketplace indexes
  when their existing structure is tabular.

CSV must preserve its header contract, escape cells correctly, and keep one
semantic record per row. A cell must not silently embed a complex nested
structure. When detail exceeds a flat row, store the detail in an authoritative
artifact and reference it from the CSV.

### 5.4 JSON

Reserve JSON for:

- machine-generated interchange;
- future workflow events;
- validator output; and
- APIs or automation implemented through later approved tasks.

This task does not replace existing human-maintained Markdown, YAML, or CSV
with JSON and does not authorize a JSON Schema.

### 5.5 Binary Artifacts

STL, 3MF, STEP, Blend, images, and other binary artifacts require, when
applicable:

- stable identity;
- version;
- source, author, or generator;
- checksum when practical;
- related Product and design version; and
- compliance with storage or Git LFS rules defined elsewhere.

Binary files do not carry authority merely by existing in the repository.
Their source and approval records must remain separately readable. This task
does not modify Git LFS configuration.

## 6. Common Artifact Metadata

The following semantic metadata applies when relevant:

| Metadata | Meaning |
|---|---|
| Artifact type | Governed or descriptive class of the artifact |
| Artifact ID | Stable governed ID, when a convention exists |
| Title or name | Human-readable identity |
| Product ID | Product to which the artifact belongs |
| Version | Artifact version, distinct from its ID and Git history |
| Status | State from the applicable status vocabulary |
| Owner | Role accountable for maintaining the artifact |
| Author or generator | Person, agent, system, model, or tool that created it |
| Created date/time | Original creation time |
| Updated date/time | Time of the represented revision |
| Approval state | Draft, review, approved, rejected, superseded, or applicable governed state |
| Approver | Authorized person who made the approval decision |
| Approval date | Date or timestamp of explicit approval |
| Supersedes | Earlier record or version replaced by this one |
| Authoritative source | Governing repository artifact or record |
| Related IDs | Applicable Task, Decision, Issue, Experiment, Prompt, Handoff, and artifact IDs |
| Provenance or evidence source | Origin supporting the data or claim |
| Confidentiality classification | Handling classification when applicable |

The metadata may be represented differently in Markdown, YAML, CSV, or future
JSON. This standard defines meaning, not final field spelling for every
implementation. A field may be `Unknown` or `Not applicable` when accurate, but
must not be blank when blank could conceal uncertainty, authority, scope, or
interpretation.

Artifact `status` and `approval state` are separate only when both a workflow
or lifecycle state and an approval state are required. If both are present,
their meanings must be semantically consistent and their governing state
domains must be identifiable. Do not duplicate the same meaning in both fields
when one field is sufficient.

## 7. Identity and ID Rules

Use existing repository conventions:

| Record type | Convention | Current basis |
|---|---|---|
| Product | `P001` | Governance and backlog |
| Task | `T-001` | Existing Sprint Board |
| Issue | `I-001` | Governance and Issue Tracker |
| Decision | `D-001` | Governance and Decision Log |
| Experiment | `E-001` | Governance and Experiment Lab |
| Prompt | `PR-001` | Governance and Prompt Library |
| Sprint | `S001` | Governance and Sprint Board |

IDs must be unique within their governed type, stable for the life of the
record, and never reused. Preserve them when a record is superseded or archived.
Do not derive authority, status, version, or chronological order solely from an
ID.

The following are different identifiers and are not interchangeable:

- **stable record ID:** identifies the durable logical record;
- **artifact version:** identifies a revision of an artifact;
- **filename or path:** locates content and may change under repository rules;
- **Git commit SHA:** identifies a Git commit, not artifact approval or version;
- **Git blob SHA:** identifies file content, not a commit or approval;
- **external platform identifier:** identifies an object in an outside system.

The project template currently illustrates Requirement IDs such as `R-001`,
and AI Memory has an ID column, but Governance does not yet define governed
conventions for Requirement, Handoff, Release, Evidence, design/model, or AI
Memory IDs. Their permanent conventions remain proposals requiring PO
decision; examples must not establish them silently.

## 8. Versioning Rules

Apply Governance version semantics:

- `v0.x` indicates exploration with potentially substantial change;
- `v1.0` is PO-approved for production or release;
- increment MINOR for compatible additions; and
- increment MAJOR for breaking changes.

More specifically:

- A Markdown or YAML artifact receives a new version when a material semantic
  change affects requirements, scope, behavior, interfaces, authority,
  acceptance criteria, compatibility, or dependent work. Editorial corrections
  may retain the version when repository conventions permit and authority is
  unchanged, but the correction remains traceable.
- A CSV row may be updated in place for current operational state when the
  tracker is designed as a current-state index. A material Decision, approval,
  conclusion, or historical fact is superseded rather than rewritten to hide
  prior state.
- Approval applies only to the exact identified artifact or transition and
  version. Approval does not automatically change `v0.x` to `v1.0`; Governance
  reserves `v1.0` for PO-approved production or release.
- A material change to an approved artifact requires a new version or
  superseding record and invalidates dependent approvals to the extent of the
  impact. Dependent work pauses until affected sources are synchronized and
  approvals renewed.
- Superseded versions retain IDs, dates, approval history, reasons, and a
  reference to the replacement.
- Git history supports traceability but does not replace artifact versioning,
  governed IDs, or explicit approval metadata.
- Binary artifacts are not overwritten when repository rules require a new
  version; their source and derived relationships remain explicit.

## 9. Date, Time, Timezone, Number, Unit, and Boolean Conventions

- Calendar dates use ISO 8601 `YYYY-MM-DD`.
- Timestamps use ISO 8601 with timezone, for example
  `2026-07-25T14:30:00Z` or `2026-07-25T21:30:00+07:00`.
- Use UTC for machine interchange while preserving the source timezone when it
  is materially relevant to evidence, authorization, or an external event.
- Text files use UTF-8.
- Machine-readable decimal values use a period as the decimal separator.
- Units are explicit in a dedicated field or unambiguous value representation.
- Millimetres (`mm`) are the default mechanical length unit unless an approved
  Product Specification states otherwise.
- Preserve significant precision justified by the source; do not imply greater
  measurement accuracy through formatting or conversion.
- Preserve the original measurement value and unit when converting, together
  with the conversion method and converted value.
- Distinguish boolean `true`, boolean `false`, `Unknown`, and
  `Not applicable`. Do not encode all four as truthy/falsy values.
- Do not use blank values when blank could hide uncertainty, missing evidence,
  applicability, or authority.

## 10. Status and Approval Representation

The applicable state vocabulary must be named or inferable from artifact type:

| State domain | Governing source or meaning |
|---|---|
| Product status | Governance: `Idea`, `Todo`, `Doing`, `Review`, `Testing`, `Done`, `Archived` |
| Task execution status | Existing task/Sprint convention; reports bounded work progress |
| Communication state | Communication Protocol states |
| Decision status | Governance: `Proposed`, `Approved`, `Rejected`, `Superseded` |
| Issue status | Governance: `Open`, `Investigating`, `Fixed`, `Verified`, `Archived` |
| Experiment status/result | Governance: `Planned`, `Running`, `Pass`, `Fail`, `Inconclusive` |
| Artifact state | Draft, review/awaiting review, approved, rejected, superseded, or archived as applicable |
| Execution Acceptance | PO confirmation that task deliverables satisfy task criteria only |
| Lifecycle Approval | PO authorization of a named artifact, gate, or transition |

Never infer one domain from another. A completed task, approved Decision, merged
commit, or accepted execution result does not automatically advance a Product
lifecycle gate.

The final Task status vocabulary has not yet been approved. Existing repository
values may continue to be used, but a future schema must not enforce a final
Task-status enumeration without explicit PO approval. This document does not
define that vocabulary.

Durable approval data identifies:

- exact artifact or transition;
- exact version;
- named gate;
- PO identity;
- approval date/time;
- conditions;
- scope; and
- related Decision or evidence.

A boolean such as `approved: true` is insufficient by itself for durable
lifecycle approval. Only the PO may provide approvals reserved by `AGENTS.md`
and the Product Lifecycle.

## 11. References and Relationships

ADF supports these semantic relationships:

| Relationship | Meaning |
|---|---|
| belongs to Product | Record is scoped to a stable Product ID |
| created by Task | Artifact resulted from bounded task execution |
| governed by Requirement or Specification | Behavior is constrained by an authoritative version |
| approved by Decision | An approved Decision records the material choice |
| tested by Experiment | Experiment supplies applicable test evidence |
| affected by Issue | Issue identifies a defect, risk, or blocker |
| generated from Prompt | Output traces to exact Prompt and version |
| supersedes artifact | New record or version explicitly replaces an earlier one |
| derived from source artifact | Output traces to its source and transformation |
| published as marketplace listing | Release maps to an external publication record |
| summarized by Handoff | Bounded snapshot points to authoritative sources |
| contributes to AI Memory | Evidence supports a reusable scoped conclusion |

Use stable IDs and exact artifact versions whenever authority or
reproducibility depends on the version. A reference should identify the record
type and repository source or external system when an ID could be ambiguous.
Do not copy an entire authoritative record into another artifact when a
reference and bounded snapshot are sufficient.

Snapshots must state their source, applicable version, retrieval or preparation
time when material, and that the source remains authoritative.

## 12. Artifact-Specific Semantic Requirements

The following requirements define minimum meaning, not final schemas:

| Artifact | Purpose and minimum identity | Required relationships | Authority and approval | Versioning and provenance | Lifecycle relevance |
|---|---|---|---|---|---|
| Product | Product ID, name, owner, status, intended value | Backlog/project record, requirements, tasks | PO owns intent, priority, and product decisions | Stable ID; material scope history retained | Root context across all stages |
| Requirement | Requirement identity or explicit local reference, statement, source, priority, acceptance criterion | Product, PO source, affected Specification | PO approval required before governing work | Version with source and change rationale | Requirement stage and downstream traceability |
| Product Specification | Product ID, exact version, status, measurable criteria | Approved requirements, Decisions, evidence, tests | Exact version requires PO approval | New version for material criteria change; preserve revision history | Specification gate and verification basis |
| Task | Task ID, title, objective, status, owner | Sprint/Product, inputs, deliverables, acceptance criteria | Authorizes bounded execution only; acceptance is not lifecycle approval | Current-state updates plus preserved material history | Coordinates work without replacing stage state |
| Decision | Decision ID, date, title, status, options, decision, rationale | Product/artifacts affected, approver, supersedes | Only approved when authorized approver is explicit | Supersede; never rewrite history to hide change | Authorizes material choices within its scope |
| Issue | Issue ID, title, severity, status, observed impact | Product, affected artifact, evidence, owner | Closure does not approve residual risk unless PO explicitly does so | Preserve opened/closed history and resolution | May block, return, or qualify a transition |
| Experiment | Experiment ID, status/result, hypothesis or test, variables, criteria | Product, prototype/artifact version, evidence | Physical result acceptance requires PO-supplied or confirmed evidence | Preserve method, conditions, original values, and result | Supports testing and readiness |
| Prompt | Prompt ID, title, exact version, tool/model, purpose | Product when applicable, inputs, output reference | Output is generated candidate material, not approval or evidence by itself | Version prompt, settings, model/tool, and outcome | Supports analysis or generation within task scope |
| Handoff | Date/scope identity plus Handoff Metadata | Sender, receiver, Product, Task, records, governing artifacts | Transfers bounded context/authority; cannot grant lifecycle approval | Correct or supersede per Handoff Guide | Coordinates responsibility across stages |
| Evidence record | Source identity or unambiguous reference, evidence type, date/time | Product, claim, artifact, collector/generator | Verification state and PO confirmation remain explicit | Preserve original format/unit, method, limitations, transformations | Supports criteria, Decisions, and gates |
| Design or model artifact | Stable identity or traceable local reference, version, format | Product, approved concept/Specification, source/derived files | Exact mechanical design requires PO approval before its gate | Preserve generator, source, checksum when practical, derived chain | Mechanical Design through release |
| Release | Release identity or exact version, status, contents | Product, approved design, test evidence, Issues, cost | PO approves exact release candidate and residual risks | Immutable or superseded release package with provenance | Release Preparation and Maintenance |
| Marketplace publication record | Product ID, platform identifier, status, publication date | Approved release, listing, authorization, external URL | Separate explicit PO authorization for each publication scope | Preserve published versions and later corrections/delisting | Optional publication stage when in approved scope |
| AI Memory entry | Local identity until governed, category, learning, scope, state | Evidence, Product/artifacts when applicable, last verified date | Only evidence-backed conclusions are promoted; no lifecycle authority | Supersede/deprecate conflicting learning; preserve evidence | Reusable knowledge after validated outcomes |

## 13. Handoff Data Requirements

The approved Handoff Guide controls package content and procedure. A standard
handoff contains:

- `SUMMARY.md`;
- `DECISIONS.yaml`;
- `OPEN_QUESTIONS.md`; and
- `CODEX_TASK.md`.

`SUMMARY.md` includes Handoff Metadata identifying:

- message type;
- sender and intended receiver;
- prepared timestamp, with timezone when material;
- related Product ID;
- Task and related record IDs;
- artifact and version when applicable;
- authority level;
- requested action;
- communication state;
- superseded handoff when applicable; and
- references to governing artifacts.

Fields may be `Not applicable` but are not silently omitted when authority,
scope, or interpretation could change. Decision content copied into
`DECISIONS.yaml` is a bounded snapshot and never replaces the authoritative
Decision Log. Handoff data cannot override higher-priority sources or grant a
lifecycle approval.

## 14. Evidence and Provenance

Evidence type and verification state must remain explicit:

| Evidence type | Required distinction |
|---|---|
| PO statement | Direct PO input; distinguish intent, observation, and approval |
| Physical measurement | Original value/unit, instrument or method, collector, conditions, uncertainty |
| Photograph | Creator/source, time, subject, applicable scope, material edits |
| Generated model | Generator/tool/model, inputs, settings, source versions; generated status |
| Tool output | Tool/version, command or method, inputs, timestamp, result and limitations |
| External source | Publisher/author, title or identifier, retrieval date, applicable excerpt or claim |
| AI inference | Model/agent, inputs, assumptions, confidence when useful; never presented as observed fact |
| Validated test result | Method, criteria, prototype/artifact version, evidence, result, limitations, PO confirmation |

Evidence metadata should identify:

- source;
- collector, author, or generator;
- date/time;
- method or tool;
- related Product and artifact;
- original unit or format;
- limitations;
- confidence when applicable; and
- PO confirmation when physical-world evidence is involved.

Transformations retain a link to the original, the transformation method, and
who or what performed it. AI confidence never replaces physical testing or PO
confirmation.

## 15. Validation Model

Validation proceeds in increasing levels:

1. **Syntax validation:** encoding, parseability, delimiter/markup correctness,
   and basic value forms.
2. **Structural validation:** required components, headers, fields, and
   cardinality for the applicable artifact.
3. **Referential integrity:** IDs, paths, versions, and relationships resolve
   to intended records.
4. **Semantic consistency:** units, status domains, dates, meanings, sources,
   and cross-artifact statements do not conflict.
5. **Approval and authority validation:** approval record names the correct PO,
   artifact/version or transition, gate, date, scope, conditions, and evidence.
6. **Lifecycle readiness validation:** required artifacts, evidence, Issues,
   and approvals exist for the proposed transition.
7. **Physical evidence validation:** physical claims have PO-supplied or
   PO-confirmed evidence and applicable limitations.

Automation may check syntax, structure, IDs, versions, references, and required
fields. It may report suspected semantic, authority, or readiness problems.
Automation cannot grant PO approval, accept physical evidence on the PO's
behalf, or silently waive an error.

Proposed validator severities are:

- **Error:** invalid or missing data prevents safe interpretation, authority,
  reproducibility, or required progression;
- **Warning:** data is usable only with a visible limitation or likely
  inconsistency; and
- **Information:** non-blocking observation or improvement.

Every validator result identifies the rule, artifact, location, severity, and
message. Warnings and errors must not be silently ignored; their disposition is
recorded by the responsible role.

## 16. Compatibility and Migration

- **Additive change:** adds optional or conditionally required semantics without
  changing existing meaning. It requires a compatible version increment when
  material.
- **Breaking change:** removes, renames, reinterprets, or newly requires data in
  a way that invalidates existing consumers or records. It requires a MAJOR
  version change under Governance.
- **Deprecation:** marks a convention for future removal while documenting its
  replacement, affected records, and compatibility period.
- **Superseding convention:** explicitly identifies the prior convention,
  replacement, effective scope, rationale, and approved Decision.
- **Compatibility period:** states how long or through which milestone both
  conventions remain readable and which one is authoritative for new work.

A migration plan identifies affected artifacts and products, mapping rules,
validation, rollback or recovery, preservation of IDs/approvals/history,
owners, timing, and unresolved risks. Schema or convention changes must state
their effect on existing products, handoffs, validators, and external
references.

Migration never fabricates missing approval, evidence, dates, or provenance.
No migration script or record conversion is authorized by this task.

## 17. Security, Privacy, and Secrets

ADF data must not contain:

- passwords;
- API keys;
- authentication tokens;
- private keys; or
- unnecessary personal information.

Sensitive external sources should remain in controlled locations with bounded
references rather than copied content. Confidentiality classification and
access restrictions should be explicit when applicable. Minimize disclosed
data for agents and external tools.

Do not expose secrets in examples, validation output, logs, prompts, generated
artifacts, commits, handoffs, or error reports. If exposure is suspected,
contain it and use the applicable security or Issue process without repeating
the sensitive value.

## 18. Example Records

All examples are fictional. Their field layout is illustrative, not a final
schema, and does not establish new repository requirements.

### 18.1 Common Artifact Metadata

```yaml
artifact_type: Product Specification
artifact_id: Not applicable
title: Compact Sensor Stand Specification
product_id: P042
version: v0.3
status: Draft
owner: Product Owner
author_or_generator: ADF design agent
created: "2026-07-25"
updated: "2026-07-25T14:30:00Z"
approver: Not applicable
approval_date: Not applicable
supersedes: v0.2
authoritative_source: 06_specifications/P042/SPECIFICATION_v0.3.md
related_ids:
  - T-042
confidentiality: Internal
```

### 18.2 Product Record

```csv
id,product,priority,status,target_user,value_hypothesis,risk,next_action,owner
P042,Compact Sensor Stand,Medium,Idea,Workshop users,Hold a sensor securely,Dimensions unverified,Collect measurements,PO
```

### 18.3 Decision Reference

```yaml
decision_id: D-021
status: Approved
authoritative_source: 11_decision_log/decisions.csv
applies_to: Compact Sensor Stand concept comparison v0.2
```

This is a reference and bounded snapshot, not the authoritative Decision record.

### 18.4 Task Record

```csv
task_id,sprint,product_id,title,status,priority,owner,acceptance_criteria
T-042,S042,P042,Review printability,Awaiting Review,Medium,AI,Findings reference Specification v0.3
```

The task status reports execution progress and grants no lifecycle approval.

### 18.5 Evidence Provenance

```yaml
evidence_type: Physical measurement
source: PO-supplied caliper reading
collector: Product Owner
collected_at: "2026-07-25T20:15:00+07:00"
product_id: P042
related_artifact: Device interface measurement
original_value: 31.40
original_unit: mm
method_or_tool: Digital caliper
limitations: Single measurement; instrument calibration not recorded
po_confirmation: Confirmed
```

### 18.6 Cross-Artifact Relationship

```text
Product P042
  governed by Specification v0.3
  concept approved by Decision D-021
  tested by Experiment E-014
  affected by Issue I-009
  work created by Task T-042
```

### 18.7 Validation Result

```yaml
rule: ADF-REF-EXAMPLE
artifact: 06_specifications/P042/SPECIFICATION_v0.3.md
location: Approved by PO
severity: Error
message: Approval state is Approved but approver and approval date are missing
```

The example rule name is illustrative and does not create a governed validator
rule-ID convention.

## 19. Relationship to Approved ADF Documents

- `AGENTS.md` controls source priority, agent behavior, authority boundaries,
  validation, and reporting.
- `docs/GOVERNANCE.md` controls governed IDs, versions, standard statuses, and
  repository-level Definition of Done.
- `docs/COMMUNICATION_PROTOCOL.md` controls message semantics, common message
  metadata, communication states, and authority.
- `docs/PRODUCT_LIFECYCLE.md` controls lifecycle stages, transitions, required
  artifacts, return paths, and approval gates.
- `docs/HANDOFF_GUIDE.md` controls handoff package content, preparation,
  acknowledgement, correction, and completion.
- This document controls semantic data meaning and format-selection policy once
  explicitly approved.

This standard does not duplicate or replace those documents. When sources
conflict, apply the priority in `AGENTS.md` and escalate unresolved conflicts
to the PO.

## 20. Future Machine-Readable Schemas

After this document is approved, separately authorized tasks may:

- decide governed IDs that remain open;
- define exact field names, types, enumerations, and conditional requirements;
- create JSON Schema or other machine-readable validation artifacts;
- map existing Markdown, YAML, CSV, and binary metadata;
- define validator rules and test fixtures;
- plan compatibility and migration; and
- implement validation or interchange in bounded phases.

Future schemas must preserve human-readable authority, existing IDs and
history, explicit approval semantics, source provenance, and compatibility.
They must not duplicate authoritative records, embed secrets, or treat schema
validity as approval.
