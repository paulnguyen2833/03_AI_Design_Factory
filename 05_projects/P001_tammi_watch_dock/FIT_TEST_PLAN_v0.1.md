# P001 Mechanical Fit-Test Preparation

**Version:** v0.1  
**Status:** Draft  
**Product:** P001  
**Related task:** T-004  
**Approval state:** Pending  
**Printable output authorized:** No  
**Sending to printer authorized:** No

This is a documentation and planning artifact only. It does not authorize CAD,
slicing, purchasing, printable-output generation, or printing.

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

The prior 25.7 × 8.7 mm pocket proposal is `provisional`, not a charger
measurement. The measured charger envelope is 25.2 × 8.2 mm. Charger-pocket
depth remains `TBD`.

The earlier 6.0 mm simulated cable channel and newer 3.4/5.7 mm proposals
conflict. Cable diameter is `user_measured` at 2.8 mm, but channel width,
strain-relief geometry, bend radius, and routing must be resolved through the
approved coupon plan rather than selected silently.

## Keepout Planning

| Region | Planning constraint | Classification |
|---|---|---|
| Orange side button | Keep accessible; do not use as a hard clamp point | `image_supported`; exact clearance `TBD` |
| Adjacent side openings | Keep open | Function `TBD`; presumed speaker |
| Opposite-side cover | Preserve opening access | Function `TBD`; presumed SIM/service cover |
| Small pinhole | Keep open | Function `TBD`; presumed microphone |
| Strap hinges | Allow rotation; do not load hinge joints | `image_supported`; exact clearance `TBD` |

No original photograph may be committed until QR codes, serial identifiers, and
IMEI information have been removed.

## Required Approval Sequence

Before any CAD generation, the Product Owner must explicitly:

1. approve the governing Requirement and Specification versions;
2. approve the selected concept and D-007 or another architecture option;
3. resolve or accept the listed measurement limitations; and
4. authorize generation of the specifically named CAD deliverable.

After CAD review, separate explicit PO approval is required before generating
printable output. A further separate explicit PO authorization is required
before sending any file to a printer. Task acceptance does not provide either
authorization.

## Exit Criteria for T-004 Preparation

- Coupon scope and inspection criteria are reviewable.
- All input values are classified by provenance.
- Remaining geometry is `TBD`, not invented.
- I-001 through I-010 are considered in the plan.
- PO approval requests for CAD, printable output, and printing remain separate.
- No CAD, sliced file, purchase, or external action has occurred.

