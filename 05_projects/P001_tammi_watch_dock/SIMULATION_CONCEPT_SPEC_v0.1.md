# SIMULATION — NOT FOR MANUFACTURING

# P001 Concept and Specification Workflow Dry-Run

**Version:** v0.1  
**Status:** Draft simulation  
**Dataset:** P001-SAMPLE-001  
**Authority:** Non-authoritative  
**Verification:** Unverified  
**Related task:** T-002  
**Approval state:** Unchanged; Pending

> **SIMULATION — NOT FOR MANUFACTURING.** This artifact tests the concept and
> specification workflow only. It is not an approved requirement, Product
> Specification, verified evidence, mechanical design, or authorization to
> print, purchase, release, publish, or perform any external action.

**Supersession notice (2026-07-26):** the PO subsequently supplied measured
watch and charger inputs recorded in `PROJECT.md`. All conflicting dimensional
values in this file remain `simulation_only` and are superseded for planning.
They are preserved here solely as dry-run history and must not be used as
verified evidence or CAD input.

## Simulation Boundary

The supplied dataset is used only as unverified test input. Its dimensions,
manufacturing settings, product claims, and part strategy must not be copied
into approved requirements or verified evidence. Values shown below preserve
the test input for traceability; they are not design authority.

## Draft Concept Options

**SIMULATION — NOT FOR MANUFACTURING**

| Option | Workflow-test concept | Trade-offs | Gate blockers |
|---|---|---|---|
| A | Reclining original-character placeholder; horizontal belly cradle; lateral arm supports; removable charging insert; concealed rear cable route. | Closest to the supplied concept and supports serviceability testing; character form may add supports and fragile features. | Physical dimensions, printer profile, stability evidence, and original/licensed character direction. |
| B | Abstract reclining creature with a broad integrated belly cradle and separate removable charging insert. | Reduces recognizable-character IP risk and may simplify printing; less visually specific than Option A. | Physical dimensions, printer profile, charging alignment, cable routing, and stability evidence. |
| C | Neutral low-profile dock with a removable insert and only minimal character cues. | Simplest printability and lowest feature risk; least aligned with the playful character preference. | Physical dimensions, printer profile, charging alignment, cable routing, and usability evidence. |

No option is selected or approved. A real concept gate requires PO review and
explicit approval after the blocking inputs are resolved.

## Simulation-Only Draft Specification

**SIMULATION — NOT FOR MANUFACTURING**

| Area | Supplied workflow-test value | Classification and required action |
|---|---|---|
| Device body | 50.0 × 42.0 × 15.0 mm | Unverified simulation estimate; physically measure watch width, height, and maximum thickness. |
| Display claim | 1.4 inch; 240 × 240 px | Unsupported dataset claim despite `supplier_verified` label; attach authoritative source before relying on it. |
| Battery/camera/water-resistance claims | 800 mAh; 2.0 MP; IP68 | Unsupported dataset claims; not mechanical evidence or proof of charging suitability. |
| Charging interface | Magnetic contact at rear | Unverified description; identify the exact watch and original charger, then inspect and measure orientation and contact position. |
| Connector pocket | 25.4 × 8.4 × 3.5 mm | Unverified simulation estimate; measure the charging head and establish fit from physical and print evidence. |
| Cable channel | 6.0 × 4.0 mm; rear exit | Unverified simulation estimate; measure the cable, connector pass-through, and exit direction. |
| Minimum cable bend radius | 8.0 mm | Unverified simulation estimate; obtain manufacturer support or PO-confirmed physical evidence. |
| Cradle recess | 5.5 mm | Unverified simulation estimate; derive only after watch and interface measurements. |
| Cradle side clearance | 0.3 mm per side | Unverified simulation estimate; derive only after measurement and printer-fit evidence. |
| Pose and support | Horizontal watch on belly; lateral arm supports; screen unobstructed | Draft concept input only; verify placement, removal, controls, and stability. |
| Charging insert | Removable; cable concealed | Draft concept input only; verify connector serviceability and safe routing. |
| Process inputs | FDM, PLA, 0.4 mm nozzle, 0.2 mm layer | Simulation parameters only; printer and filament profile remain unconfirmed under I-002. |
| Mechanical rules | 2.0 mm wall; 0.25 mm nominal fit clearance | Simulation parameters only; do not treat as approved production values. |
| Part strategy | Yellow body, black ear tips, red cheeks, eye/nose details, removable insert | Draft simulation only; depends on original/licensed character direction and confirmed multicolor capability. |

## Measurements Required Before a Real Approval Gate

**SIMULATION — NOT FOR MANUFACTURING**

Physical measurement evidence supplied or confirmed by the PO is required for:

- watch overall width, height, maximum thickness, screen/control clearance,
  strap width, strap thickness, strap bend/placement clearance, charging-contact
  position, and charging-surface orientation;
- charging-head length, width, thickness, cable-entry position, retention
  features, magnetic attachment direction, and removal clearance; and
- cable diameter, supported or observed bend radius, channel width and depth,
  rear-exit direction, and USB-side connector pass-through dimensions.

The exact device variant and original charger must be identified. Printer
model, nozzle, material, layer height, build volume, multicolor capability, and
support policy also require PO confirmation before printability assessment;
these are configuration inputs, not substitutes for physical measurements.

## Recorded Inconsistencies and Issues

**SIMULATION — NOT FOR MANUFACTURING**

- **I-001 (existing):** simulated dimensions do not resolve the missing
  physical measurement evidence.
- **I-002 (existing):** the dataset supplies PLA, nozzle, layer, wall, and fit
  values while the printer and filament profile remain unknown.
- **I-003 (existing):** the colored character-part strategy has no established
  commercial rights basis or confirmed original-character direction.
- **I-004 (new):** an IP68 claim does not establish that the device or dock is
  safe or suitable while charging.
- **I-005 (new):** fields labeled `supplier_verified` have no cited supplier
  source, document version, or retrieval date.
- **I-006 (new):** `cable exit direction` is misindented in the supplied YAML,
  so its membership in `measurements_required` is structurally ambiguous.

These inconsistencies are preserved as issues. This dry-run does not infer or
silently correct the source dataset.

## Dry-Run Exit Result

**SIMULATION — NOT FOR MANUFACTURING**

The concept/specification preparation path can be exercised, but no concept or
specification may pass a real approval gate. The recommended next action is for
the PO to provide the T-003 physical measurement evidence and printer
configuration, resolve the character direction, and correct/source the
simulation dataset before reviewing three real concept options.
