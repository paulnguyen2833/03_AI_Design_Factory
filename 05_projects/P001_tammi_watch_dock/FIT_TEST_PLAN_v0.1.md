# P001 Mechanical Fit-Test Preparation

**Version:** v0.1  
**Status:** Approved  
**Product:** P001  
**Related task:** T-004  
**Approval state:** Approved  
**Approved by:** Product Owner  
**Approved date:** 2026-07-27  
**Measurement limitations accepted:** Yes; 2026-07-27  
**Authorized CAD:** `Fit-Test Coupon CAD v0.1`  
**Authorization decision:** D-008  
**Printable output authorized:** No  
**Sending to printer authorized:** No

Approval of this plan authorizes only generation of the named experimental
`Fit-Test Coupon CAD v0.1`. It does not authorize Product Mechanical Design CAD,
slicing, purchasing, printable-output generation, or sending anything to a
printer.

## Approval Review Record

- **Review date:** 2026-07-27
- **Reviewer and authority:** Product Owner
- **Decision:** D-008
- **Approval reference:** PO confirmation correcting the approval date;
  repository record commit
  `40fb472f225fa61a87de069e170c7d35c6dc25a9`
- **Minute:** the PO approved `FIT_TEST_PLAN_v0.1.md`, accepted its documented
  measurement limitations, and authorized only `Fit-Test Coupon CAD v0.1`.
  Printable output and sending anything to a printer remain unauthorized.
- **Correction:** this review record supersedes the previously recorded
  2026-07-26 approval date without changing authorization scope.

## CAD Scope Distinction

- **Experimental Fit-Test Coupon CAD:** limited test geometry for charger
  pocket, cable channel, strain relief, partial watch support, body location,
  and keepout inspection. It is not Product Mechanical Design.
- **Product Mechanical Design CAD:** the complete product geometry governed by
  approved Requirement, Product Specification, concept, and mechanical-design
  lifecycle gates.

A neutral Experimental Fit-Test Coupon does not require approval of a full
character concept. Authorization for coupon CAD does not approve a Product
Specification, concept, Product Mechanical Design, printable output, or print.

## Proposed Architecture

Decision D-007 proposes two replaceable layers:

- **P001 Mechanical Core:** watch cradle, removable charger insert, cable path,
  strain relief, and fit-test geometry.
- **P001 Character Shell:** replaceable decorative shell developed as an
  independently designed mascot.

The separation is proposed, not approved. It would allow mechanical evidence to
develop without treating minor Pikachu modifications as resolution of I-003.
Marketplace publication remains blocked.

## Manufacturing Profile

| Field | Value | Classification | Source or limitation |
|---|---|---|---|
| Manufacturer/model | Bambu Lab A1 | `supplier_verified` | Bambu Lab technical specification |
| Process | FDM | `supplier_verified` | Bambu Lab technical specification |
| Build volume | 256 × 256 × 256 mm | `supplier_verified` | Bambu Lab technical specification |
| Included nozzle | 0.4 mm | `supplier_verified` | Bambu Lab technical specification |
| Filament diameter | 1.75 mm | `supplier_verified` | Bambu Lab technical specification |
| Compatible plate | Bambu Textured PEI Plate | `supplier_verified` | One of the listed compatible plates |
| Slicer | Bambu Studio | `supplier_verified` | Listed official slicer |
| Prototype material | PLA | `provisional` | Suitable according to supplier; not approved for P001 production |
| Printer profile | Bambu Lab A1 0.4 nozzle | `provisional` | Actual machine/profile instance not validated |

Source: [Bambu Lab A1 Technical
Specifications](https://bambulab.com/hu/a1/tech-specs), accessed 2026-07-26.

## Provisional Print Settings

These values are workflow proposals and are not production-approved:

| Setting | Provisional value |
|---|---:|
| Layer height | 0.16 mm |
| First layer | 0.20 mm |
| Wall loops | 3 |
| Top shell layers | 4 |
| Bottom shell layers | 4 |
| Infill | 15% gyroid |
| Supports | Avoid when possible |
| Brim | False |
| Dimensional compensation | 0.0 mm |

Dimensional compensation must remain 0.0 mm until coupon evidence supports a
change.

## Proposed Coupon Scope

The future fit-test should contain only:

- a charger-pocket clearance coupon with 0.20, 0.30, and 0.40 mm clearance per
  side;
- a cable-channel and strain-relief test;
- a partial curved watch-support surface;
- a body-location feature; and
- inspection access for the orange button, side openings, pinhole,
  opposite-side cover, and strap hinges.

The inspection must evaluate the draft R-020 through R-024 intent at coupon
scope: one-handed placement, placement with straps attached, magnetic
self-alignment, unobstructed keepouts, and absence of normal support or
clamping load through the strap hinges. Coupon inspection can expose a
geometry problem but cannot approve or close any draft requirement.

The prior 25.7 × 8.7 mm pocket proposal is `provisional`, not a charger
measurement. The measured charger envelope is 25.2 × 8.2 mm. Charger-pocket
depth remains `TBD`.

The earlier 6.0 mm simulated cable channel and newer 3.4/5.7 mm proposals
conflict. Cable diameter is `user_measured` at 2.8 mm, but channel width,
strain-relief geometry, bend radius, and routing must be resolved through the
approved coupon plan rather than selected silently.

## Keepout Planning

| Region | Planning constraint | Evidence classification | Coupon inspection |
|---|---|---|---|
| Orange side button | Keep accessible; do not use as a hard clamp point | `image_supported`; EV-005 and EV-008 | Confirm no contact or actuation during placement |
| Adjacent side openings | Keep open; exact function `TBD` | `image_supported` presence; EV-008 | Confirm openings remain visually unobstructed |
| Opposite-side cover | Preserve opening access; exact function `TBD` | `image_supported` presence; EV-006 | Confirm coupon does not overlap required opening path |
| Small pinhole | Keep open; exact function `TBD` | `image_supported` presence; EV-007 | Confirm pinhole remains visually unobstructed |
| Strap hinges | Allow rotation; do not load hinge joints | `image_supported`; EV-004, EV-005, and EV-007 | Confirm body support and no hinge clamping or normal support load |

Privacy-reviewed front, side, and charger photographs are indexed under
`evidence/2026-07-26_measurements/README.md`. Back-label and charging-recess
photographs must not be committed until QR codes, serial identifiers, and IMEI
information have been removed.

## Experimental Coupon Authorization Sequence

Before generating `Fit-Test Coupon CAD v0.1`, the Product Owner must explicitly:

1. approve the exact `FIT_TEST_PLAN_v0.1.md` version;
2. accept the measurement limitations documented in that version; and
3. authorize generation of the named `Fit-Test Coupon CAD v0.1`.

The Product Owner satisfied these three conditions on 2026-07-27, recorded by
D-008. The authorization is active only for `Fit-Test Coupon CAD v0.1` and does
not expand the scope below.

Full character concept approval is not required for this neutral mechanical
coupon. Coupon authorization does not approve any draft Requirement, Product
Specification, concept, Product Mechanical Design, printable output, or print.

Coupon CAD and generated files are design artifacts, not physical fit-test
evidence. Fit-test observations and results become physical evidence only after
an authorized coupon is physically tested, the method and observations are
recorded, and the Product Owner confirms the physical results and their
limitations.

After coupon CAD review, separate explicit PO approval is required before
generating printable output. A further separate explicit PO authorization is
required before sending anything to a printer. Task acceptance provides none of
these approvals or authorizations.

Product Mechanical Design CAD remains outside T-004 and must follow the normal
Requirement, Product Specification, concept, and Mechanical Design gates.

## Exit Criteria for T-004 Preparation

- Coupon scope and inspection criteria are reviewable.
- All input values are classified by provenance.
- Remaining geometry is `TBD`, not invented.
- I-001 through I-010 are considered in the plan.
- Experimental Coupon CAD and Product Mechanical Design CAD are not conflated.
- PO authorization for Coupon CAD, approval for printable output, and
  authorization to send to a printer remain separate.
- No CAD, sliced file, purchase, or external action had occurred when this plan
  was approved.
