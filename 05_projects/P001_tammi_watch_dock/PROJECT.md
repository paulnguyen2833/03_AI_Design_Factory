# P001 — Tammi Watch Charging Dock

**Version:** v0.1  
**Product status:** Doing  
**Requirement status:** Draft  
**Approval state:** Pending  
**Owner:** Product Owner  
**Created:** 2026-07-25  
**Related tasks:** T-001, T-003

This record is in Requirement discovery. No requirement, concept,
specification, mechanical design, physical evidence, release, or publication
gate is approved.

## Problem

Children using a Tammi Kid Max smartwatch need a stable and easy-to-use place
to rest the watch while using its original magnetic charging connector. The
dock should manage the cable neatly without obstructing normal placement,
removal, screen access, or primary controls.

## Intended User and Usage Context

- **Intended user:** a child who uses a Tammi Kid Max smartwatch, with an adult
  potentially assisting setup or cable maintenance.
- **Usage context:** indoor charging on a stable horizontal surface.
- **Current evidence boundary:** the intended user and context are PO inputs
  under review; usability has not been physically validated.

## Value Hypothesis

A stable FDM-printable dock that locates the watch and original charging head
while concealing most of the cable may make daily charging easier and reduce
cable clutter.

## PO Inputs Under Review

The PO supplied the following current preferences:

- a cute reclining character lying on its back;
- the watch rests horizontally on the belly;
- the belly supports and locates the watch;
- a pocket holds the original magnetic charging connector;
- a concealed cable channel routes toward the rear;
- fragile details and excessive support should be avoided; and
- colored regions should be separable where practical for multicolor printing.

These inputs are neither verified dimensions nor an approved concept.

## Requirement v0.1

The references `R-001` through `R-019` are local P001 requirement references.
They are not repository-governed permanent IDs.

All requirements and acceptance criteria below are draft proposals pending PO
review. Any dimensional criterion remains `TBD` until PO-supplied measurement
evidence and applicable print evidence exist.

### Functional Requirements

| Local ref | Draft requirement | Priority | Input classification | Proposed acceptance criterion | Source |
|---|---|---|---|---|---|
| R-001 | The watch is supported horizontally during intended use. | Must | PO statement under review | A measured prototype supports the identified watch in the PO-confirmed horizontal orientation without unintended release; dimensions `TBD`. | PO input; T-001 |
| R-002 | The charging connector aligns with the watch charging interface. | Must | PO statement under review | On a measured prototype the original connector engages the charging interface without forced misalignment; position and clearance `TBD`. | PO input; T-001; T-003 |
| R-003 | The charging connector is retained while remaining serviceable. | Must | PO statement under review | The connector stays located during normal placement and can be removed for service without destructive disassembly or damage; retention dimensions `TBD`. | PO input; T-001; T-003 |
| R-004 | The cable is routed through a concealed channel. | Must | PO statement under review | The original cable follows the intended internal path without exposure beyond approved entry and exit regions; channel dimensions `TBD`. | PO input; T-001; T-003 |
| R-005 | The cable exits toward the rear. | Must | PO statement under review | The routed cable leaves the dock in the PO-confirmed rear direction without pinching; exit geometry `TBD`. | PO input; T-001; T-003 |
| R-006 | The watch can be placed and removed without excessive force. | Must | Proposed usability requirement | PO testing confirms placement and removal are comfortable and do not damage the watch, strap, connector, or dock; force criterion `TBD`. | Derived from product intent; T-001 |
| R-007 | The screen and primary controls remain accessible where applicable. | Should | Proposed usability requirement | PO review confirms required screen and control access in the intended charging position; clearance `TBD`. | Derived from usage context; T-001; T-003 |
| R-008 | The dock remains stable during normal placement and removal. | Must | PO statement under review | A prototype does not tip or slide unacceptably during PO-confirmed intended use; test method and thresholds `TBD`. | PO input; T-001 |

### Manufacturing Requirements

| Local ref | Draft requirement | Priority | Input classification | Proposed acceptance criterion | Source |
|---|---|---|---|---|---|
| R-009 | The product is suitable for FDM printing. | Must | PO-confirmed process input | A later printability review finds no blocking FDM issue for the approved printer, material, and profile; all are currently `TBD`. | PO input; T-001 |
| R-010 | The design avoids unnecessarily fragile features. | Must | PO preference under review | A later design review identifies no unsupported fragile detail outside a documented and PO-accepted risk; minimum features `TBD`. | PO input; T-001 |
| R-011 | Unsupported overhangs and support material are minimized. | Should | PO preference under review | A later slicer review documents orientation, overhangs, and support use for the approved printer profile; thresholds `TBD`. | PO input; T-001 |
| R-012 | Colored regions are separable where practical. | Should | PO preference under review | A later concept/design review identifies practical color boundaries without compromising function or printability. | PO input; T-001 |
| R-013 | The charging insert and connector remain serviceable. | Must | PO statement under review | The original charging head can be inspected and replaced without destroying the approved production part; clearances `TBD`. | PO input; T-001; T-003 |
| R-014 | Final tolerances are not defined without measurement and print evidence. | Must | Governance constraint | Every production tolerance references PO-confirmed measurements and applicable print evidence before approval. | AGENTS.md; Product Lifecycle; T-003 |

### Safety and Usability Requirements

| Local ref | Draft requirement | Priority | Input classification | Proposed acceptance criterion | Source |
|---|---|---|---|---|---|
| R-015 | User-facing surfaces have no sharp edges. | Must | Proposed safety requirement | PO inspection of a physical prototype finds no sharp user-facing edge under intended handling; edge criteria `TBD`. | Derived safety constraint; T-001 |
| R-016 | The cable is not forced below its safe bend radius. | Must | Proposed safety requirement | The approved cable path meets a PO-confirmed or manufacturer-supported bend criterion; bend radius is `TBD`. | T-003; I-001 |
| R-017 | The charging head is not crushed or permanently trapped. | Must | Proposed safety requirement | A measured prototype retains the charging head without visible damage and permits non-destructive removal; dimensions `TBD`. | T-003; I-001 |
| R-018 | The dock does not tip during intended use. | Must | Proposed safety requirement | PO physical testing confirms stability using an approved test method; load, force, and threshold are `TBD`. | T-001 |
| R-019 | The product makes no unsupported electrical certification or safety-validation claim. | Must | Governance constraint | Product records and any future listing contain only claims supported by recorded evidence and explicit authorization. | AGENTS.md; Product Lifecycle |

## Constraints

| Constraint | Current value | Authority or source |
|---|---|---|
| Product ID | P001 | Backlog |
| Device family | Tammi Kid Max children’s smartwatch | PO input under review |
| Charging connector | Original magnetic connector | PO input under review |
| Manufacturing process | FDM 3D printing | PO input |
| Printer | TBD | I-002 |
| Nozzle | TBD | I-002 |
| Material | TBD | I-002 |
| Layer height | TBD | I-002 |
| Build volume | TBD | I-002 |
| Multicolor capability | TBD | I-002 |
| Support policy | TBD | I-002 |
| Final dimensions and tolerances | Prohibited until evidence exists | T-003; I-001 |

## Assumptions

- The dock will be used indoors on a stable horizontal surface.
- The original charging head and cable will be available for measurement.
- The watch variant can be uniquely identified before specification work.
- FDM remains the intended process unless the PO explicitly changes scope.
- Multicolor separation is desirable but may be limited by printability and
  available equipment.

These assumptions are unverified and must not be treated as approved
requirements or evidence.

## Risks

| Issue | Risk | Current impact | Required resolution |
|---|---|---|---|
| I-001 | Verified watch, charging-head, and cable dimensions are missing. | Blocks dimensional acceptance criteria and Specification work. | PO supplies measurement evidence requested below. |
| I-002 | Printer, nozzle, material, profile, build volume, and multicolor capability are unknown. | Blocks printability criteria and manufacturing constraints. | PO confirms the intended printer setup. |
| I-003 | A recognizable protected character may require rights or licensing for commercial use. | Blocks commercial character selection and later publication review. | PO defines intended use and supplies a valid rights basis or selects an original/licensed character. |

No legal conclusion is made. Marketplace publication requires a separate
IP/licensing review and explicit PO authorization.

## Explicit Exclusions

This Requirement-discovery record does not:

- approve Requirement v0.1;
- select or approve a character or concept;
- create or approve a Product Specification;
- authorize dimensions, tolerances, a 3D model, printing, purchasing, release,
  marketing, or publication;
- make electrical certification, safety-validation, or commercial-rights
  claims; or
- define new governed ID or status conventions.

## Open Questions

| Question | Responsible decision-maker | Blocking? | Affected work |
|---|---|---|---|
| What exact Tammi Kid Max watch variant and original charger are in scope? | Product Owner | Yes | Measurements and Requirement review |
| Is the intended use personal, internal evaluation, or commercial? | Product Owner | Yes for character/IP scope | Concept and publication eligibility |
| Does the PO have a valid rights basis for any recognizable character, or should the product use an original character? | Product Owner | Yes for commercial concept work | Concept selection and IP review |
| Which printer, nozzle, material, layer height, and profile are intended? | Product Owner | Yes | Manufacturing requirements |
| Is multicolor/AMS printing available and required, preferred, or out of scope? | Product Owner | No | Manufacturing preference |
| Which screen areas and controls must remain accessible while charging? | Product Owner | Yes | Interface clearance |
| What placement/removal behavior would the PO consider comfortable? | Product Owner | No until usability criteria are finalized | Acceptance criteria |
| What surface and cable-exit direction represent intended normal use? | Product Owner | Yes | Stability and routing criteria |

## Measurement Dependencies

Measurement local references `M-W01` through `M-P07` are local to P001 and do
not establish a repository-governed ID convention. All values begin as `TBD`
with status `Unknown`. No approximate values from prior chat are treated as
evidence.

### Measurement Worksheet

| Measurement item | Symbol/local ref | Value | Unit | Measurement method/tool | Number of measurements | Source | Evidence reference | Uncertainty or limitation | Status |
|---|---|---:|---|---|---:|---|---|---|---|
| Watch overall width | M-W01 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Watch overall height | M-W02 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Watch overall thickness | M-W03 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Screen/control clearance | M-W04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Strap width | M-W05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Strap thickness | M-W06 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Minimum practical strap bend or placement clearance | M-W07 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging contact position relative to watch edges | M-W08 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging surface orientation | M-W09 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging-head overall length | M-C01 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging-head overall width | M-C02 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging-head overall thickness | M-C03 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Cable entry location on charging head | M-C04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Cable diameter | M-C05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Connector retention features | M-C06 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Magnetic attachment direction | M-C07 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required connector removal clearance | M-C08 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Minimum observed comfortable cable bend radius | M-R01 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required cable-channel width | M-R02 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required cable-channel depth | M-R03 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Rear cable-exit direction | M-R04 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| USB-side connector dimensions if it must pass through the channel | M-R05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Printer model | M-P01 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Nozzle diameter | M-P02 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Intended material | M-P03 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Layer height | M-P04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Build volume | M-P05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Multicolor/AMS availability | M-P06 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Preferred support policy | M-P07 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |

## Existing Related Records

- **Tasks:** T-001 and T-003 are active in Sprint S001.
- **Decisions:** no approved P001 product Decision exists.
- **Issues:** I-001, I-002, and I-003 track current blockers and risk.
- **Experiments:** E-001 through E-003 are planned snap-fit clearance
  experiments and provide no measurement evidence for Requirement v0.1.
- **Prompts:** PR-001 is not scoped to P001 and supplies no requirement
  authority.
- **AI Memory:** no validated P001 conclusion exists.

## Next Review

The PO should supply the measurement evidence in the worksheet, answer the
blocking open questions, and review Requirement v0.1. Review or execution
acceptance does not approve the requirements; explicit PO requirement approval
must be recorded separately.
