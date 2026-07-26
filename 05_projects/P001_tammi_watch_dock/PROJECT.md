# P001 — Tammi Watch Charging Dock

**Version:** v0.1  
**Product status:** Doing  
**Requirement status:** Draft  
**Approval state:** Pending  
**Owner:** Product Owner  
**Created:** 2026-07-25  
**Related tasks:** T-001, T-003, T-004

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

On 2026-07-26 the PO also supplied the following functional inputs for
requirement review:

- use the original magnetic charger without requiring strap removal;
- support one-handed placement and magnetic self-alignment;
- support the watch body without loading the strap hinges;
- keep the orange side button, adjacent side openings, small pinhole, and
  opposite-side cover unobstructed and serviceable;
- route the cable toward the rear with strain relief; and
- keep the charger removable and replaceable.

These are explicit PO inputs but do not become approved requirements or
acceptance criteria until the applicable Requirement version is explicitly
approved.

## Product Owner Measurement Input

The Product Owner supplied the following measurements on 2026-07-26. They are
classified as `user_measured`. The measurement tool, repeated-measurement count,
uncertainty, and sanitized photograph references have not yet been recorded, so
these values are usable as PO measurement input but are not a complete
dimensional evidence package.

| Item | Value | Unit | Classification | Limitation |
|---|---:|---|---|---|
| Watch width | 53.0 | mm | `user_measured` | Method, repetitions, and uncertainty not recorded |
| Watch height | 42.5 | mm | `user_measured` | Method, repetitions, and uncertainty not recorded |
| Watch maximum thickness | 16.0 | mm | `user_measured` | Method, repetitions, and uncertainty not recorded |
| Watch center thickness | 14.5 | mm | `user_measured` | Convex back; back radius remains `TBD` |
| Charging recess length | 20.0 | mm | `user_measured` | Position relative to watch datum remains `TBD` |
| Charging recess height | 5.3 | mm | `user_measured` | Position relative to watch datum remains `TBD` |
| Charging recess depth | 0.4 | mm | `user_measured` | Requires confirmation before geometry is locked |
| Visible watch-contact diameter | 2.0 | mm | `user_measured` | Contact function and datum remain `TBD` |
| Watch-contact pitch | 2.4 | mm | `user_measured` | Measurement method not recorded |
| Outer contact center distance | 7.2 | mm | `user_measured` | Measurement method not recorded |
| Charger overall length | 25.2 | mm | `user_measured` | Charger thickness remains `TBD` |
| Charger main-body length | 20.1 | mm | `user_measured` | Measurement method not recorded |
| Charger width | 8.2 | mm | `user_measured` | Measurement method not recorded |
| Charger contact face | 19.3 × 8.2 | mm | `user_measured` | Face height/depth datum remains `TBD` |
| Charger magnet center distance | 14.5 | mm | `user_measured` | Magnetic attachment direction remains `TBD` |
| Cable diameter | 2.8 | mm | `user_measured` | Bend-radius evidence remains `TBD` |
| Strain-relief width | approximately 5.2 | mm | `user_measured` | Approximate; requires confirmation |

The watch back is described as convex with rounded corners. Side and back radii
remain `TBD`. Photographs visibly support four watch contacts, two charger
alignment magnets, and two charger electrical pins; these observations are
classified as `image_supported`, not dimensional measurements. Original
back-label photographs are not stored because sanitized copies without QR
codes, serial identifiers, or IMEI information are not available. Eight
privacy-reviewed views are indexed under
`evidence/2026-07-26_measurements/README.md`.

The former simulation values `50.0 × 42.0 × 15.0 mm` for the watch and
`25.4 × 8.4 mm` for the charger are `simulation_only` and are superseded for
planning by the PO measurements above. They remain preserved in the simulation
artifact and must not be treated as evidence.

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
| Printer | Bambu Lab A1 | PO input; supplier specification accessed 2026-07-26 |
| Nozzle | 0.4 mm included nozzle | Bambu Lab A1 technical specification |
| Filament diameter | 1.75 mm | Bambu Lab A1 technical specification |
| Material | PLA for prototype planning; provisional | PO input; I-002 |
| Layer height | Provisional; not production-approved | I-002; T-004 |
| Build volume | 256 × 256 × 256 mm | Bambu Lab A1 technical specification |
| Multicolor capability | TBD | I-002 |
| Slicer | Bambu Studio | Bambu Lab A1 technical specification |
| Support policy | Provisional; avoid when possible | I-002; T-004 |
| Final dimensions and tolerances | Prohibited until evidence exists | T-003; I-001 |

Official supplier source: [Bambu Lab A1 Technical
Specifications](https://bambulab.com/hu/a1/tech-specs), accessed 2026-07-26.
The source also identifies the Textured PEI plate as compatible. Supplier
compatibility does not approve P001 material or production settings.

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
| I-001 | Some required geometry and measurement metadata remain incomplete. | Blocks final dimensional criteria and CAD authorization. | Confirm charger-pocket depth, radii, datums, clearances, methods, and uncertainty. |
| I-002 | The printer is identified but the P001 print profile remains provisional. | Blocks production print settings. | Validate material, layer, support, and compensation settings through authorized tests. |
| I-003 | A recognizable protected character may require rights or licensing for commercial use. | Blocks commercial character selection and marketplace publication. | Develop and review an independently designed mascot or supply a valid license; keep publication blocked. |
| I-007 | PO measurements conflict with previous simulation values. | Simulation geometry must not flow into CAD or evidence. | Use the 2026-07-26 PO input for planning and preserve simulation provenance. |
| I-008 | Fit geometry, clearances, pocket depth, and radii require test evidence. | Blocks final fit geometry and CAD authorization. | Run an explicitly authorized coupon workflow after PO approval. |
| I-009 | Side openings, pinhole, and cover functions are not authoritatively confirmed. | Keepout intent is known but exact function remains uncertain. | Confirm from a manual or PO test while preserving access in proposed geometry. |
| I-010 | Original photographs expose private device identifiers. | Original images must not enter the repository. | Supply sanitized copies with QR, serial, and IMEI information removed. |

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
| Is the intended use personal, internal evaluation, or commercial? | Product Owner | Yes for character/IP scope | Concept and publication eligibility |
| Should P001 use an independently designed mascot and the proposed Mechanical Core/Character Shell separation? | Product Owner | Yes for architecture and character direction | D-007; concept and mechanical planning |
| Which provisional layer height and detailed Bambu Studio settings should enter the authorized coupon plan? | Product Owner | Yes before printable preparation | T-004 |
| Is multicolor/AMS printing available and required, preferred, or out of scope? | Product Owner | No | Manufacturing preference |
| Which screen areas and controls must remain accessible while charging? | Product Owner | Yes | Interface clearance |
| What placement/removal behavior would the PO consider comfortable? | Product Owner | No until usability criteria are finalized | Acceptance criteria |
| What are the authoritative functions and exact keepouts for the side openings, pinhole, button, and cover? | Product Owner | Yes before geometry is locked | I-009; T-004 |

## Measurement Dependencies

Measurement local references `M-W01` through `M-P07` are local to P001 and do
not establish a repository-governed ID convention. All values begin as `TBD`
until a classified source exists. Approximate and provisional values are
identified explicitly and are not production evidence.

### Measurement Worksheet

| Measurement item | Symbol/local ref | Value | Unit | Measurement method/tool | Number of measurements | Source | Evidence reference | Uncertainty or limitation | Status |
|---|---|---:|---|---|---:|---|---|---|---|
| Watch overall width | M-W01 | 53.0 | mm | PO measurement; tool not recorded | TBD | Product Owner | EV-003; PO input 2026-07-26 | Repetitions and uncertainty not recorded | user_measured |
| Watch overall height | M-W02 | 42.5 | mm | PO measurement; tool not recorded | TBD | Product Owner | EV-003; PO input 2026-07-26 | Repetitions and uncertainty not recorded | user_measured |
| Watch overall thickness | M-W03 | 16.0 maximum; 14.5 center | mm | PO measurement; tool not recorded | TBD | Product Owner | PO input 2026-07-26 | Convex back; back radius TBD | user_measured |
| Screen/control clearance | M-W04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Strap width | M-W05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Strap thickness | M-W06 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Minimum practical strap bend or placement clearance | M-W07 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging contact position relative to watch edges | M-W08 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Charging surface orientation | M-W09 | Rear of watch; exact datum TBD | Not applicable | PO input and photograph observation | TBD | Product Owner | PO input 2026-07-26 | Exact orientation and datum remain TBD | image_supported |
| Charging-head overall length | M-C01 | 25.2 | mm | PO measurement; tool not recorded | TBD | Product Owner | EV-001; EV-002; PO input 2026-07-26 | Repetitions and uncertainty not recorded | user_measured |
| Charging-head overall width | M-C02 | 8.2 | mm | PO measurement; tool not recorded | TBD | Product Owner | EV-001; EV-002; PO input 2026-07-26 | Repetitions and uncertainty not recorded | user_measured |
| Charging-head overall thickness | M-C03 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Cable entry location on charging head | M-C04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Cable diameter | M-C05 | 2.8 | mm | PO measurement; tool not recorded | TBD | Product Owner | EV-001; EV-002; PO input 2026-07-26 | Repetitions and uncertainty not recorded | user_measured |
| Connector retention features | M-C06 | Two alignment magnets visible | Not applicable | Photograph observation | Not applicable | Product Owner | EV-001; EV-002 | Magnet function and direction require confirmation | image_supported |
| Magnetic attachment direction | M-C07 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required connector removal clearance | M-C08 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Minimum observed comfortable cable bend radius | M-R01 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required cable-channel width | M-R02 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Required cable-channel depth | M-R03 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Rear cable-exit direction | M-R04 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| USB-side connector dimensions if it must pass through the channel | M-R05 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Printer model | M-P01 | Bambu Lab A1 | Not applicable | Supplier specification | Not applicable | Bambu Lab | A1 Technical Specifications accessed 2026-07-26 | Equipment instance not inspected | supplier_verified |
| Nozzle diameter | M-P02 | 0.4 included nozzle | mm | Supplier specification | Not applicable | Bambu Lab | A1 Technical Specifications accessed 2026-07-26 | Installed nozzle on actual machine not inspected | supplier_verified |
| Intended material | M-P03 | PLA | Not applicable | PO proposal | Not applicable | Product Owner | PO input 2026-07-26 | Prototype material only; not production-approved | provisional |
| Layer height | M-P04 | TBD | mm | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Build volume | M-P05 | 256 × 256 × 256 | mm | Supplier specification | Not applicable | Bambu Lab | A1 Technical Specifications accessed 2026-07-26 | Usable envelope depends on setup and build plate | supplier_verified |
| Multicolor/AMS availability | M-P06 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |
| Preferred support policy | M-P07 | TBD | Not applicable | TBD | TBD | Product Owner | TBD | Unknown | Unknown |

## Existing Related Records

- **Tasks:** T-001 and T-003 are active; T-004 is `Todo` in Sprint S001.
- **Decisions:** D-007 proposes the Mechanical Core/Character Shell separation;
  no approved P001 product Decision exists.
- **Issues:** I-001 through I-010 include current blockers, conflicts, and risk.
- **Experiments:** E-001 through E-003 are planned snap-fit clearance
  experiments and provide no measurement evidence for Requirement v0.1.
- **Prompts:** PR-001 is not scoped to P001 and supplies no requirement
  authority.
- **AI Memory:** no validated P001 conclusion exists.

## Next Review

Before CAD generation, the PO must explicitly approve the governing Requirement
and Specification versions, select and approve a concept, resolve or accept the
remaining measurement limitations, and explicitly authorize generation of the
named CAD deliverable. Approval to prepare CAD is not authorization to generate
printable output or send anything to a printer.

The recommended next review is D-007 and the proposed T-004 fit-test plan.
