# ADF Product Lifecycle

**Version:** v0.1  
**Status:** Approved  
**Owner:** Product Owner  
**Approved by:** Product Owner  
**Approved date:** 2026-07-25

## 1. Purpose

This document defines the lifecycle semantics followed by every AI Design
Factory (ADF) product, from an initial idea through maintenance or archival. It
establishes the stages, transitions, required artifacts, responsibilities,
approval gates, return paths, and completion criteria needed to keep product
work controlled, traceable, and reviewable.

Because this version is a draft, it is a proposal and has no lifecycle approval
authority until the Product Owner (PO) explicitly approves it.

## 2. Scope

This lifecycle applies to ADF product work and its durable repository records.
It defines what must be true before a product advances, returns, pauses, or
leaves active development. It does not define a workflow engine, queue,
database, API, schema, dashboard, GUI, automation, or file layout.

The lifecycle stages in this document describe where product work is in the
product-development journey. They do not replace:

- Product status values defined by `docs/GOVERNANCE.md`;
- communication states defined by `docs/COMMUNICATION_PROTOCOL.md`;
- task execution status on a Sprint Board;
- execution acceptance of a task deliverable; or
- explicit PO lifecycle approval of a named artifact or transition.

Those concepts may be related, but they are not interchangeable.

## 3. Lifecycle Principles

- **Repository-backed:** the repository is the Source of Truth for durable
  requirements, specifications, versions, decisions, issues, experiments,
  evidence, approvals, and product history.
- **Explicit authority:** only the PO may grant lifecycle approval. Silence,
  task completion, execution acceptance, an AI recommendation, or repository
  presence is not approval.
- **Evidence before advancement:** claims must cite applicable evidence and its
  limitations. Physical test results require evidence supplied or confirmed by
  the PO.
- **Controlled action:** printing, purchasing, releasing, and publishing each
  require explicit authorization before the action occurs.
- **Traceable change:** preserve IDs, versions, Decisions, Issues, Experiments,
  prior approvals, and superseded history. Do not overwrite history to conceal
  a change.
- **Scoped AI assistance:** AI may prepare, compare, review, validate, and
  recommend, but cannot approve a gate, accept physical evidence on the PO's
  behalf, or expand authorized scope.
- **Return rather than terminate:** a failed test normally returns the product
  to the earliest stage affected by the failure. Failure alone does not cancel
  or archive a product.
- **No silent shortcuts:** an urgent or simplified path may omit activities
  only through an explicit PO-approved Decision. Mandatory safety review,
  evidence, and approval gates cannot be silently bypassed.
- **Minimum sufficient process:** artifacts and reviews should be proportional
  to risk and complexity while still satisfying mandatory gates.

## 4. Roles and Responsibilities

### Product Owner

The PO provides product intent, constraints, priorities, authorization,
physical-world evidence, risk acceptance, and final decisions. The PO is the
only role that may approve requirements, specifications, concepts, mechanical
designs, physical test results and risks, production or release readiness, and
marketplace publication.

### AI Agents

AI agents may clarify intent, prepare artifacts, propose alternatives, review
designs, analyze evidence, validate repository consistency, and recommend a
transition. They must identify assumptions and risks, stay within authorized
scope, and leave all lifecycle gates pending for the PO.

### Execution Tools and External Services

Tools and external services may generate or analyze artifacts only within
explicitly authorized inputs and actions. Their output is candidate material or
unverified evidence until reviewed and recorded. Tool operation never supplies
PO approval.

### Repository and GitHub

The repository holds authoritative versioned records. GitHub may provide
collaboration, review, and integration history, but a commit, merge, review, or
closed task does not itself constitute lifecycle approval unless the required
PO approval is explicit and recorded.

## 5. Lifecycle Overview

The normal forward path is:

1. Idea
2. Requirement
3. Specification
4. Concept
5. Mechanical Design
6. Prototype Preparation
7. Prototype Print
8. Physical Testing
9. Revision, when change is required
10. Release Preparation
11. Marketplace Publication
12. Maintenance
13. Archive

Revision is an explicit control stage rather than a mandatory pass-through for
every successful product. A product may move from Physical Testing directly to
Release Preparation when the evidence satisfies the approved specification and
the PO accepts the applicable results and risks. Marketplace Publication is
optional unless publication is part of the approved product scope. A
PO-approved release may move directly from Release Preparation to Maintenance
without marketplace publication. Maintenance may send the product back to any
earlier stage affected by a proposed change.

## 6. Detailed Stage Definitions

### 6.1 Idea

- **Purpose:** capture a product opportunity clearly enough to decide whether
  requirement discovery is worthwhile.
- **Entry criteria:** an identifiable need, problem, opportunity, or PO intent
  exists.
- **Required inputs:** PO intent; known user, context, constraints, and
  assumptions, when available.
- **Activities:** clarify the problem and intended value; identify unknowns,
  obvious risks, and comparable ideas; assign or reference the Product ID.
- **Required outputs or artifacts:** repository-backed idea or backlog record
  with Product ID, value hypothesis, owner, known risks, and next action.
- **Responsible role:** PO owns intent and priority; AI may research, clarify,
  and prepare the record.
- **PO approval requirement:** explicit PO direction is required to invest in
  Requirement work; this does not approve requirements or a concept.
- **Exit criteria:** the idea is identifiable, traceable, prioritized, and
  authorized for Requirement work.
- **Allowed next stages:** Requirement or Archive.
- **Return conditions:** later discovery may return here when the core user
  problem, target market, or value hypothesis must be reconsidered.

### 6.2 Requirement

- **Purpose:** establish what the product must achieve and the constraints that
  define success.
- **Entry criteria:** the PO has authorized requirement discovery for a
  traceable product idea.
- **Required inputs:** idea record; PO needs and constraints; available user,
  market, safety, device, environment, and business context.
- **Activities:** elicit functional and non-functional requirements; separate
  facts, assumptions, preferences, and open questions; define measurable
  acceptance criteria and exclusions.
- **Required outputs or artifacts:** versioned requirement set with sources,
  assumptions, acceptance criteria, unresolved questions, and relevant Issues
  or Decisions.
- **Responsible role:** PO supplies and approves needs; AI may elicit, structure,
  check, and propose requirements.
- **PO approval requirement:** the PO must explicitly approve the named
  requirement version before it governs Specification work.
- **Exit criteria:** requirements are versioned, internally consistent enough
  to specify, traceable to PO intent, and explicitly PO-approved.
- **Allowed next stages:** Specification, Idea, or Archive.
- **Return conditions:** unclear value returns to Idea; missing, conflicting, or
  changed needs return the product to Requirement.

### 6.3 Specification

- **Purpose:** translate approved requirements into measurable, testable product
  criteria and boundaries.
- **Entry criteria:** an applicable requirement version has PO approval.
- **Required inputs:** approved requirements; applicable measurements, rules,
  constraints, standards, known interfaces, and risks.
- **Activities:** define measurable criteria, interfaces, tolerances where
  justified, materials or process constraints where required, test methods,
  exclusions, and acceptance thresholds; check requirement traceability.
- **Required outputs or artifacts:** versioned Product Specification; referenced
  Issues, Decisions, measurement sources, and planned verification methods.
- **Responsible role:** AI or assigned specialists may prepare and review; PO
  resolves product choices and owns approval.
- **PO approval requirement:** the PO must explicitly approve the exact
  specification version before Concept selection or dependent design work.
- **Exit criteria:** every governing requirement is addressed or explicitly
  deferred; criteria are testable; assumptions and risks are visible; the exact
  version is PO-approved.
- **Allowed next stages:** Concept, Requirement, or Archive.
- **Return conditions:** requirement conflict returns to Requirement; missing
  technical definition remains in Specification until resolved.

### 6.4 Concept

- **Purpose:** explore materially different ways to satisfy the approved
  specification and select a direction.
- **Entry criteria:** the governing Product Specification is PO-approved.
- **Required inputs:** approved specification; applicable mechanical rules,
  constraints, risks, comparable solutions, and available evidence.
- **Activities:** prepare at least three viable options when a material design
  decision is involved; compare trade-offs, printability, usability, risk,
  cost, and testability; recommend without approving.
- **Required outputs or artifacts:** concept alternatives and comparison;
  concept review evidence; an approved Decision recording the selected concept,
  reason, approver, and date.
- **Responsible role:** AI or designers prepare and compare; PO selects and
  approves the concept.
- **PO approval requirement:** explicit PO approval of the named concept and
  applicable Decision is required.
- **Exit criteria:** alternatives were considered as required by Governance;
  the chosen concept is traceable to the specification; material risks and
  assumptions are recorded; the PO approved the direction.
- **Allowed next stages:** Mechanical Design, Specification, Requirement, or
  Archive.
- **Return conditions:** no viable concept returns to Specification or
  Requirement; a changed value proposition returns to Idea.

### 6.5 Mechanical Design

- **Purpose:** convert the approved concept into a manufacturable, reviewable,
  and testable mechanical design.
- **Entry criteria:** a concept has explicit PO approval and its governing
  specification remains current.
- **Required inputs:** approved concept and specification; verified dimensions
  or identified measurement sources; applicable rules, interfaces, materials,
  process constraints, and risk records.
- **Activities:** develop versioned design artifacts; assess fit, function,
  tolerances, strength, assembly, print orientation, supports, material use,
  hazards, and inspectability; perform design and printability reviews.
- **Required outputs or artifacts:** versioned design source and derived files;
  design rationale; review results; updated Issues, Decisions, risks, and
  specification traceability.
- **Responsible role:** designer or AI prepares and reviews within authorized
  scope; PO owns material choices and approval.
- **PO approval requirement:** explicit PO approval of the exact mechanical
  design version is required before prototype preparation.
- **Exit criteria:** design artifacts are versioned and traceable; required
  reviews are recorded; blocking design Issues are resolved or explicitly
  accepted by the PO; the named version is approved.
- **Allowed next stages:** Prototype Preparation, Concept, Specification, or
  Archive.
- **Return conditions:** concept flaws return to Concept; specification
  conflicts return to Specification; changed needs return to Requirement.

### 6.6 Prototype Preparation

- **Purpose:** prepare a controlled, reproducible prototype build without
  treating preparation as authorization to print or purchase.
- **Entry criteria:** the mechanical design version has PO approval.
- **Required inputs:** approved design files; material and process requirements;
  printer or supplier constraints; build orientation and settings; safety and
  printability reviews.
- **Activities:** verify file integrity and version; prepare slicing or
  manufacturing settings; estimate material, time, and cost; define inspection
  and test plan; identify required purchases and authorizations.
- **Required outputs or artifacts:** versioned production-ready prototype file
  or preparation record; settings and material record; cost estimate; test and
  inspection plan; open Issues and risks.
- **Responsible role:** AI or operator may prepare and check; PO authorizes
  purchasing and printing.
- **PO approval requirement:** explicit authorization is required separately
  for any purchase and for the prototype print. Preparation acceptance is not
  print authorization.
- **Exit criteria:** the exact build input and settings are traceable; required
  material and equipment are available or authorized; inspection and testing
  are defined; the PO has explicitly authorized the intended print.
- **Allowed next stages:** Prototype Print, Mechanical Design, or Archive.
- **Return conditions:** file, printability, cost, or safety problems return to
  Mechanical Design; invalid criteria return to Specification.

### 6.7 Prototype Print

- **Purpose:** produce the authorized physical prototype and record the build
  outcome.
- **Entry criteria:** prototype preparation is complete and the PO has
  explicitly authorized the exact print and any required purchase.
- **Required inputs:** authorized versioned build file; settings, material,
  equipment, safety instructions, and inspection plan.
- **Activities:** perform the print through an authorized human or service;
  record actual configuration, deviations, observations, time, material, cost,
  and build failures; preserve evidence.
- **Required outputs or artifacts:** identifiable prototype; print/build record;
  photos or other evidence where available; actual settings and costs; Issues
  for deviations or defects.
- **Responsible role:** PO or explicitly authorized operator/service performs
  the physical action; AI may prepare instructions and analyze supplied
  evidence but cannot initiate printing or purchasing.
- **PO approval requirement:** authorization is required before printing.
  Completion of a print is a result, not approval of the result.
- **Exit criteria:** the build outcome and prototype identity are traceable to
  the input version; deviations and failures are recorded; the prototype is
  available for inspection or the failed build has been assessed.
- **Allowed next stages:** Physical Testing, Prototype Preparation, Mechanical
  Design, Revision, or Archive.
- **Return conditions:** setup or process failure returns to Prototype
  Preparation; design-caused build failure returns to Mechanical Design or
  Revision.

### 6.8 Physical Testing

- **Purpose:** evaluate the physical prototype against the approved
  specification and documented test plan.
- **Entry criteria:** a traceable prototype and applicable test plan exist.
- **Required inputs:** prototype identity; approved specification; test methods
  and criteria; print/build record; relevant risks and Issues.
- **Activities:** inspect and test fit, function, usability, durability, safety,
  and other applicable criteria; record method, conditions, observations,
  measurements, limitations, and deviations.
- **Required outputs or artifacts:** versioned Experiment or test record;
  evidence supplied or confirmed by the PO; pass, fail, or inconclusive result
  per criterion; Issues and recommended next action.
- **Responsible role:** PO performs or confirms physical-world testing and
  evidence; AI may organize results, compare them to criteria, and recommend.
- **PO approval requirement:** only the PO may accept physical test results,
  limitations, residual risks, or a readiness transition.
- **Exit criteria:** applicable criteria have traceable results; evidence and
  limitations are recorded; failures and serious Issues have owners; the PO
  explicitly accepts results and risks before Release Preparation.
- **Allowed next stages:** Release Preparation, Revision, Mechanical Design,
  Prototype Preparation, Prototype Print, Specification, or Archive.
- **Return conditions:** failed or inconclusive tests return to the earliest
  stage responsible for the cause; missing evidence remains in Physical Testing.

### 6.9 Revision

- **Purpose:** control changes caused by test findings, defects, new evidence,
  cost, risk, or changed requirements while preserving history.
- **Entry criteria:** a material change is proposed and its cause is recorded.
- **Required inputs:** failed or inconclusive evidence, Issues, change request,
  affected artifact versions, governing specification, and prior Decisions.
- **Activities:** perform impact analysis; classify the earliest affected stage;
  compare options for material choices; create or update Decisions; revise
  artifacts with new versions; define regression verification.
- **Required outputs or artifacts:** change rationale; impact assessment;
  updated Issues and Decisions; new artifact versions; updated traceability and
  regression plan; preserved superseded history.
- **Responsible role:** AI or designers may analyze and prepare revisions; PO
  chooses material changes and approves affected lifecycle gates.
- **PO approval requirement:** every previously approved artifact materially
  changed by the revision requires renewed explicit PO approval at its
  applicable gate.
- **Exit criteria:** the change is traceable; affected artifacts and downstream
  records are synchronized; required approvals are renewed; regression work is
  defined.
- **Allowed next stages:** Requirement, Specification, Concept, Mechanical
  Design, Prototype Preparation, Prototype Print, Physical Testing, Release
  Preparation, Maintenance, or Archive, depending on impact.
- **Return conditions:** incomplete root-cause or impact analysis remains in
  Revision; newly discovered upstream impact returns to the earliest affected
  stage.

### 6.10 Release Preparation

- **Purpose:** establish that a validated product package is complete,
  reproducible, documented, costed, and ready for an explicit release decision.
- **Entry criteria:** physical results and residual risks have been accepted by
  the PO; required revisions and regression tests are complete.
- **Required inputs:** approved requirements, specification, concept and design;
  accepted test evidence; versioned production files; open-Issue and risk
  status; cost and marketplace requirements.
- **Activities:** verify package completeness, versioning, reproducibility,
  licensing, cost, safety information, instructions, metadata, images, and
  claims; review open Issues and publication risks.
- **Required outputs or artifacts:** versioned release candidate; release
  checklist and review; production files; instructions; cost and marketplace
  records; explicit list of residual risks and open Issues.
- **Responsible role:** AI may prepare and review the package; PO owns risk
  acceptance and release readiness.
- **PO approval requirement:** explicit PO approval of the named release
  candidate is required. Release approval does not by itself authorize
  marketplace publication unless publication is also explicitly authorized.
- **Exit criteria:** Governance Definition of Done evidence is satisfied or
  exceptions are explicitly accepted; the exact release candidate and residual
  risks have PO approval.
- **Allowed next stages:** Marketplace Publication, Maintenance, Revision,
  Mechanical Design, Physical Testing, or Archive.
- **Return conditions:** missing evidence returns to Physical Testing; design or
  specification defects return to the earliest affected stage; package defects
  remain in Release Preparation.

### 6.11 Marketplace Publication

- **Purpose:** publish an approved release package through an explicitly
  authorized marketplace action and capture the publication record.
- **Entry criteria:** the release candidate has PO approval and the PO has
  explicitly authorized publication to a named marketplace or channel.
- **Required inputs:** approved release package; publication authorization;
  approved listing content, files, pricing, licensing, claims, and channel
  requirements.
- **Activities:** perform the authorized publication; verify uploaded versions,
  presentation, pricing, and availability; record channel identifiers and
  deviations.
- **Required outputs or artifacts:** publication record with date, channel,
  listing identifier or location, published versions, pricing, authorization,
  and verification evidence.
- **Responsible role:** PO or explicitly authorized publisher performs the
  external action; AI may prepare materials and post-publication checks but
  cannot publish without authorization.
- **PO approval requirement:** explicit PO publication authorization is
  mandatory for each intended scope or channel.
- **Exit criteria:** publication is verified against the authorized package;
  identifiers and evidence are recorded; discrepancies are contained and
  reported.
- **Allowed next stages:** Maintenance, Release Preparation, Revision, or
  Archive.
- **Return conditions:** listing/package errors return to Release Preparation;
  product defects return to the earliest affected design or validation stage.

### 6.12 Maintenance

- **Purpose:** sustain the released product using feedback, defects, performance
  evidence, cost changes, platform changes, and controlled updates.
- **Entry criteria:** a product has an approved release or verified publication
  requiring ongoing stewardship.
- **Required inputs:** release and publication records; customer or PO feedback;
  Issues, marketplace metrics, costs, support findings, and new evidence.
- **Activities:** monitor and triage; correct documentation or listing defects;
  assess product changes; maintain version compatibility and traceability;
  record lessons supported by evidence in AI Memory.
- **Required outputs or artifacts:** maintained Issues, Decisions, release or
  listing revisions, compatibility notes, cost and KPI records, and evidence-
  backed AI Memory updates.
- **Responsible role:** PO prioritizes and authorizes changes; AI may monitor
  supplied records, analyze, prepare corrections, and recommend actions.
- **PO approval requirement:** routine analysis needs task authorization;
  material product changes, releases, purchases, and publications require the
  applicable explicit lifecycle approval or authorization again.
- **Exit criteria:** active maintenance items are resolved, deferred with an
  owner, routed to the correct lifecycle stage, or the product is approved for
  Archive.
- **Allowed next stages:** any affected earlier stage, Release Preparation,
  Marketplace Publication, Maintenance, or Archive.
- **Return conditions:** a proposed change returns to the earliest stage whose
  approved basis would change; defects follow the same impact-based rule.

### 6.13 Archive

- **Purpose:** retain an inactive, cancelled, rejected, or superseded product
  and its history without presenting it as active work.
- **Entry criteria:** the PO has decided to stop active work, retire the product,
  or archive a superseded product record.
- **Required inputs:** current product state; reason; applicable Decisions,
  approvals, Issues, Experiments, artifact versions, publication status, and
  retention obligations.
- **Activities:** record reason, date, owner, and relevant Decision; preserve
  IDs and history; identify published assets that require an explicitly
  authorized external action; move records according to repository conventions
  without deletion.
- **Required outputs or artifacts:** traceable archived record and retained
  artifact history; disposition of open risks and Issues; references to any
  authorized unpublish or retirement actions.
- **Responsible role:** AI may prepare archival records; PO authorizes the
  product decision and any external unpublish or retirement action.
- **PO approval requirement:** explicit PO approval is required to archive the
  product and separately authorize external delisting or destructive action.
- **Exit criteria:** records are preserved, active views no longer misrepresent
  the product, and outstanding obligations have a recorded disposition.
- **Allowed next stages:** Archive or, after an explicit PO Decision, the
  earliest applicable reactivation stage.
- **Return conditions:** reactivation never erases archival history; it returns
  to Idea, Requirement, Specification, Revision, or Maintenance based on what
  must be revalidated.

## 7. Transition Rules

1. A stage transition is permitted only when its exit criteria and the next
   stage's entry criteria are satisfied.
2. Required artifact versions, evidence, unresolved risks, and applicable
   approval must be identifiable in repository records.
3. A task may finish and receive execution acceptance while the product remains
   in its current lifecycle stage. Neither event advances a lifecycle gate.
4. An AI recommendation may support a transition request but cannot grant it.
5. If an artifact governed by an earlier approval changes materially, dependent
   work pauses and the product returns to the earliest affected gate.
6. A PO-approved Decision is required for a material exception, shortcut, or
   intentional deviation. The Decision must state scope, reason, risk, affected
   artifacts, and any conditions.
7. Mandatory safety, physical-evidence, purchasing, printing, release, and
   publication controls remain applicable even on an urgent path.
8. External actions occur only within the exact scope authorized. Completing a
   preparation stage does not imply authorization for its external action.

## 8. Approval Gates

| Gate | Required PO decision | Minimum basis |
|---|---|---|
| Requirement gate | Approve exact requirement version | Traceable needs, constraints, acceptance criteria, and open questions |
| Specification gate | Approve exact Product Specification version | Approved requirements, measurable criteria, verification approach, and risks |
| Concept gate | Select and approve named concept | Compared alternatives, trade-offs, recommendation, and approved Decision |
| Mechanical design gate | Approve exact design version | Specification traceability, design/printability review, risks, and blocking-Issue disposition |
| Print authorization | Authorize exact prototype print | Approved design, prepared build version, settings, cost, safety, and test plan |
| Physical evidence gate | Accept named test results and residual risks | PO-supplied or PO-confirmed evidence, methods, criteria, results, and limitations |
| Release readiness gate | Approve exact release candidate | Definition of Done evidence, production package, cost, open Issues, and residual risks |
| Publication gate | Authorize named package, channel, and scope | Approved release, listing content, pricing, licensing, claims, and channel details |
| Archive gate | Approve archive or retirement | Reason, retained history, open-obligation disposition, and external-action plan |

Every approval record must identify the gate, artifact and version or transition,
conditions, PO identity, and date. Execution acceptance applies only to the
active task's criteria and must not be recorded or interpreted as any gate in
this table.

## 9. Revision and Return Paths

A return path is selected by impact, not convenience:

- a value or target-user problem returns to Idea;
- a changed need or constraint returns to Requirement;
- an untestable, incomplete, or conflicting criterion returns to Specification;
- a solution-direction failure returns to Concept;
- geometry, fit, strength, assembly, or printability defects return to
  Mechanical Design;
- settings, material, slicing, or equipment preparation problems return to
  Prototype Preparation;
- build execution problems return to Prototype Print or Prototype Preparation;
- missing or inconclusive physical evidence remains in Physical Testing;
- release-package or listing defects return to Release Preparation; and
- post-release changes enter Revision and then return to the earliest affected
  stage.

Revision creates new versions and preserves superseded records. Regression work
must cover the changed artifact and any dependent behavior. A failed test
creates or updates the appropriate Issue and return path; it does not
automatically cancel or archive the product.

## 10. Failure, Blocked, Cancelled, and Archived Handling

- **Failure:** record expected and observed behavior, evidence, impact, and
  owner. Contain only affected actions, then return to the stage responsible for
  the cause.
- **Blocked:** record the missing information, authority, evidence, resource, or
  external change; preserve valid completed work; resume only when the blocker
  is resolved or the PO accepts a documented limitation within their authority.
- **Cancelled:** cancellation stops authorized active work but does not delete
  records. The PO records the reason and decides whether the product remains
  inactive or enters Archive. Any supplier, print, release, or publication
  cancellation is a separate external action requiring authority.
- **Archived:** preserve Product IDs, Decisions, Issues, Experiments, versions,
  evidence, approvals, and prior history. Do not reuse IDs or silently alter
  archived records.

These conditions may be reflected in task or Product status records, but those
status values do not replace the lifecycle analysis or required PO decisions.

## 11. Required Records and Traceability

As applicable to product risk and stage, repository records must connect:

- Product ID and current Product status;
- governing requirement and Product Specification versions;
- concept, design, prototype, production, release, and listing versions;
- Task, Issue, Decision, Experiment, Prompt, and Sprint IDs;
- sources for dimensions, claims, measurements, and physical evidence;
- approvals, authorizations, approver identity, dates, conditions, and scope;
- test criteria, method, prototype identity, result, and limitations;
- material, settings, cost, risk, and marketplace records;
- superseded versions and the record that replaced them; and
- evidence-backed conclusions added to AI Memory.

Records must use the repository's existing locations and conventions. This
document requires semantic traceability but does not prescribe a schema or
create a new task-management structure.

## 12. Definition of Done

A product may be marked `Done` only when the Governance Definition of Done is
satisfied and the repository demonstrates that:

- the requirements and Product Specification are versioned and PO-approved;
- the selected concept and mechanical design have explicit PO approval;
- printability and material risks were reviewed;
- production files are versioned and traceable to the approved design;
- authorized prototype printing and physical testing produced recorded evidence;
- physical results and residual risks were accepted by the PO;
- serious Issues are closed or explicitly accepted by the PO;
- cost, release artifacts, relevant lessons, and marketplace metadata when
  publication is included in the approved product scope are recorded;
- evidence-backed conclusions are synchronized to AI Memory; and
- the exact release received PO approval, and any publication action included
  in the approved product scope received separate explicit PO authorization.

Marketplace publication is not required for `Done` unless it is included in the
approved product scope. When included, it remains a separate external action
requiring explicit PO authorization.

`Done` is a Product status, not a communication state or task status. A product
may later enter Maintenance, and retirement moves it to `Archived` without
erasing its Done history.

## 13. Relationship to Communication Protocol and Governance

`AGENTS.md` defines source priority, agent operating boundaries, approval
authority, validation, and reporting rules. `docs/GOVERNANCE.md` defines
standard Product, Issue, Decision, and Experiment states, IDs, versioning, and
the repository-level Definition of Done.

`docs/COMMUNICATION_PROTOCOL.md` defines how intent, instructions, proposals,
approvals, execution acceptance, evidence, results, and corrections are
communicated and recorded. Its communication states describe a communication
item, not a product's lifecycle stage.

For clarity:

- **Product lifecycle stage** identifies the product-development phase defined
  in this document.
- **Product status** is the repository status defined by Governance.
- **Task execution status** reports progress of a bounded task or Sprint item.
- **Communication state** reports the state of a message or handoff.
- **Execution acceptance** confirms only that named task deliverables meet their
  acceptance criteria.
- **Lifecycle approval** is an explicit PO decision authorizing a named artifact
  or product transition.

Where sources conflict, apply the priority in `AGENTS.md` and escalate
unresolved conflicts to the PO.

## 14. Future Extension

ADF may later add product types, specialized reviews, regulated controls,
suppliers, channels, or lifecycle variants. An extension must:

- preserve existing approval boundaries and traceability;
- define compatibility and migration for affected versions;
- identify additional roles, inputs, outputs, evidence, risks, and return paths;
- use an explicit PO-approved Decision for material lifecycle changes or
  simplified variants;
- retain mandatory safety and external-action authorization; and
- remain semantic unless a separate authorized task defines implementation.

Until approved and recorded, an extension is a proposal and cannot silently
change this lifecycle or the scope of an active product.
