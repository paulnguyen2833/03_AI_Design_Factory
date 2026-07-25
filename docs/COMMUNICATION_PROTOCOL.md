# ADF Communication Protocol

**Version:** v0.1  
**Status:** Approved  
**Owner:** Product Owner  
**Approved by:** Product Owner  
**Approved date:** 2026-07-25

## 1. Purpose

When approved, this document is the authoritative source for communication
semantics within the AI Design Factory (ADF). It defines how intent, proposals,
instructions, decisions, approvals, evidence, problems, and results are
exchanged so that work remains clear, traceable, and safe.

Project authority, artifact states, IDs, versioning, and approval ownership
remain defined by `AGENTS.md` and `docs/GOVERNANCE.md`.

## 2. Scope

This protocol applies to communication among the Product Owner (PO), ChatGPT,
Codex, GitHub, external AI tools, and future AI agents throughout the product
lifecycle.

It governs the meaning, minimum content, authority, handoff, acknowledgement,
and recording of messages. It does not define software implementation, APIs,
databases, dashboards, data schemas, or user interfaces.

This protocol defines the meaning and minimum content of a handoff. File names,
directory layout, templates, and preparation procedures belong in a separate
Handoff Guide.

## 3. Communication Principles

- **Repository-backed:** durable outcomes belong in the relevant versioned
  repository artifact; chat alone is not a durable source of truth.
- **Explicit authority:** every instruction and approval must identify its
  author. Silence, inference, draft text, or an AI recommendation is not
  approval.
- **Traceable context:** messages reference the relevant Product, Task, Issue,
  Decision, Experiment, Prompt, or artifact whenever one exists.
- **Clear status:** facts, assumptions, proposals, approvals, and test evidence
  must be distinguishable.
- **Minimum sufficient context:** communicate the information needed to act,
  without copying unrelated chat history or duplicating project documents.
- **Scoped autonomy:** participants act only within the authority and scope
  explicitly granted to them.
- **Evidence over assertion:** measured, generated, or observed results identify
  their source and limitations.
- **Reversible handoff:** uncertainty, conflicts, and blocked work return to the
  responsible participant instead of being silently resolved.
- **Extensible vocabulary:** new participants and message types may be added
  without changing the meaning of existing records.

## 4. Participants

### Product Owner

Provides intent, constraints, physical-world evidence, priorities, and final
approvals. The PO is the sole approval authority defined by `AGENTS.md`.

### ChatGPT

Helps clarify ideas, compare alternatives, prepare requirements and tasks, and
summarize discussions into reviewable artifacts. Its output is a proposal until
the PO approves it.

### Codex

Reads repository context, performs authorized repository work, validates
changes, and reports results, assumptions, issues, and required decisions.
Codex does not infer approval from an instruction to prepare or review work.

### GitHub

Acts as a collaboration and traceability channel for versioned artifacts,
reviews, issues, and approved integration history. Repository content takes
authority from its approval status, not merely from being present on GitHub.

### External AI Tools

Generate or analyze artifacts within explicit inputs, constraints, and
authorization. Their outputs are unverified evidence or candidates until
reviewed and recorded by an authorized participant.

### Future AI Agents

Must declare their role, inputs, permitted actions, and expected output. They
inherit this protocol and the repository's authority and approval rules.

## 5. Communication Flow

The standard flow is:

1. **Intent:** the PO states a goal, problem, constraint, or question.
2. **Clarification:** ChatGPT or an assigned agent identifies ambiguity,
   assumptions, risks, and decisions required.
3. **Proposal:** alternatives and a recommended path are presented without
   changing approval state.
4. **PO direction:** the PO approves, rejects, revises, or defers the proposal.
5. **Record:** durable requirements, decisions, tasks, and references are
   written to their authoritative repository artifacts.
6. **Handoff:** an active task identifies objective, inputs, authorized scope,
   deliverables, acceptance criteria, exclusions, and approval gates.
7. **Execution:** Codex, an external tool, or a future agent acknowledges the
   task and works only within the authorized scope.
8. **Verification:** the executor reports validation, evidence, limitations,
   changes, and open issues.
9. **Review:** the PO execution-accepts the task deliverables, requests changes,
   or makes the next decision. Execution acceptance does not grant lifecycle
   approval. Physical test results require PO-supplied or PO-confirmed evidence.
10. **Close or continue:** records are synchronized, and the next task is
    identified. Superseded communication is archived rather than deleted.

A participant may return the flow to clarification whenever information is
missing, conflicting, unsafe, or outside its authority.

## 6. Message Types

| Type | Purpose | Minimum content |
|---|---|---|
| Intent | Start exploration | Goal or problem; requester; relevant context |
| Question | Resolve ambiguity | Specific unknown; why it matters; responder needed |
| Proposal | Offer alternatives | Options; trade-offs; recommendation; assumptions |
| Instruction | Authorize bounded work | Objective; scope; deliverables; constraints; acceptance criteria |
| Approval Request | Ask for a named lifecycle gate | Artifact/version; exact gate; decision requested; evidence; unresolved risks |
| Lifecycle Approval | Record PO authority over an artifact or lifecycle transition | Exact gate; approved/rejected artifact and version; conditions; PO identity; date |
| Handoff | Transfer actionable context | Active task; authoritative inputs; current state; exclusions; next owner |
| Progress Update | Communicate ongoing work | Completed work; current work; blockers; changed assumptions |
| Result | Report completed work | Outcome; files/artifacts changed; validation; limitations; open issues |
| Execution Acceptance | Confirm task criteria are satisfied | Task and deliverable versions; acceptance criteria; PO identity; date; excluded lifecycle gates |
| Evidence | Support a claim | Source; method or tool; date; applicable scope; confidence |
| Issue | Report a problem | Observed and expected behavior; impact; evidence; owner or escalation |
| Decision Proposal | Request a material choice | Context; alternatives; consequences; recommended option |
| Correction | Replace incorrect information | Incorrect statement; corrected statement; affected artifacts |

A message may contain more than one type, but each type and its authority must be
clear. Lifecycle approval must never be implied inside another message type.

### 6.1 Common Message Metadata

Every durable message must make the following metadata identifiable:

| Field | Semantic requirement |
|---|---|
| Message type | One or more types defined by this protocol |
| Sender | Person, system, tool, or agent that originated the message |
| Recipient or responsible role | Participant expected to respond, decide, or act |
| Date and time | When the message was issued, including timezone when material |
| Related Product ID | Product context, or an explicit indication that it is not applicable |
| Related record IDs | Relevant Task, Issue, Decision, Experiment, or Prompt IDs |
| Artifact and version | Exact subject of the message when an artifact is involved |
| Authority level | Informational, proposed, authorized execution, execution acceptance, or lifecycle approval |
| Requested action | Action or decision expected from the recipient |
| Current state | Communication state defined in Section 8 |

These are semantic requirements, not an API, file format, or data schema. A
field may be marked not applicable, but must not be silently omitted when its
absence could change authority, scope, or interpretation.

## 7. Communication Rules

1. Identify the Product ID and other relevant ADF IDs when available.
2. Name the artifact and version when discussing a requirement, design, prompt,
   result, or approval.
3. Separate verified facts, PO statements, assumptions, and AI-generated
   suggestions.
4. State the requested action and expected outcome; avoid instructions such as
   “handle everything” when approval boundaries matter.
5. An executor must acknowledge material ambiguity, scope conflict, or missing
   authority before acting on the affected work.
6. Chat conclusions that affect future work must be recorded in the appropriate
   repository artifact. Raw chat history is supporting context, not authority.
7. Do not overwrite a prior decision or approval. Create a superseding record
   and preserve the earlier record according to governance.
8. External tool requests must contain only the necessary context and must not
   expose secrets, personal data, or confidential information without explicit
   authorization.
9. External tool results must identify the tool and remain unapproved until
   reviewed.
10. A handoff is complete only when the receiver can identify the active task,
    authoritative inputs, allowed actions, expected output, and escalation path.
11. Participants must report material deviations from the task rather than
    silently expanding scope.
12. Communication must remain concise, respectful, and understandable without
    relying on inaccessible conversation history.
13. Execution acceptance confirms only that task deliverables satisfy the
    active task's acceptance criteria.
14. Lifecycle approval explicitly authorizes a named product artifact or
    lifecycle transition.
15. Accepting a task result never approves a concept, mechanical design,
    production, release, or publication unless the PO explicitly names that
    lifecycle gate.

## 8. Communication States

These states describe a communication item, not a Product, Issue, Decision, or
Experiment:

| State | Meaning |
|---|---|
| Draft | Being prepared; no authority to execute or approve |
| Needs Clarification | Missing or conflicting information prevents safe interpretation |
| Proposed | Ready for review but not approved |
| Awaiting Approval | Explicitly waiting for a PO decision |
| Authorized | Scope is clear and the permitted work may begin |
| In Progress | An authorized participant is acting on it |
| Blocked | Work cannot continue without information, authority, or an external change |
| Reported | Result and validation have been communicated |
| Execution Accepted | PO confirms that task deliverables satisfy the task acceptance criteria; no lifecycle gate is implied |
| Lifecycle Approved | PO explicitly authorizes the named artifact or lifecycle transition |
| Rejected | PO has declined the proposal, result, or explicitly named lifecycle approval request |
| Superseded | A newer communication item replaces it while preserving history |
| Archived | Retained for traceability and no longer active |

Only the PO may set `Execution Accepted`, `Lifecycle Approved`, or `Rejected`.
An agent may mark its execution result `Reported`, but may not accept its own
work or approve a lifecycle gate. Execution acceptance never implies approval
of a concept, mechanical design, production, release, or publication unless the
PO explicitly names that gate.

## 9. Error Handling

When communication fails:

1. **Detect:** identify ambiguity, conflict, missing context, invalid reference,
   unsupported claim, failed delivery, or unauthorized request.
2. **Contain:** stop only the affected action; preserve completed valid work and
   do not hide or fabricate a result.
3. **Report:** state what failed, its impact, available evidence, and whether any
   repository or external state changed.
4. **Correct:** request the smallest clarification or authority needed, or issue
   a Correction message referencing affected artifacts.
5. **Record:** create or update an Issue when required by the active task; if
   tracker changes are out of scope, include the issue in the completion report.
6. **Resume:** continue only after the conflict is resolved or the responsible
   authority accepts a documented limitation or risk.

If two authoritative sources conflict, apply the priority in `AGENTS.md`. If
that does not resolve the conflict, escalate to the PO. Never choose a
convenient interpretation merely to keep work moving.

## 10. Future Extension

ADF may later add new participants, channels, automation, message types, or
specialized protocols. Extensions must:

- preserve existing message meanings and approval boundaries;
- declare participant identity, authority, inputs, outputs, and escalation path;
- remain traceable to versioned repository artifacts;
- support human review at PO approval gates;
- distinguish generated results from verified evidence;
- define compatibility or migration when changing this protocol;
- be introduced through a versioned proposal and an approved Decision.

This document defines communication semantics only. Any future technical
implementation must be specified separately.
