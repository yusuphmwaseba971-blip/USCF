# Nationwide Institution Location Audit

Audit date: 2026-09-04

## Scope and evidence

The repository seed was re-parsed from `FirebaseRegionSeedService`,
`FirebaseDistrictSeedService`, and `FirebaseUniversitySeedService`. The
institution seeder writes institution records to the Firestore `branches`
collection with `Id`, `Name`, `RegionId`, and `DistrictId`; it does not define a
separate institution-to-campus relationship.

The official Tanzania Commission for Universities directory was retrieved from:

<https://www.tcu.go.tz/services/accreditation/universities-registered-tanzania>

The row-level mapping is in
[institution-location-audit.csv](./institution-location-audit.csv). TCU's
directory verifies the institution and head-office location, but its head-office
field does not establish the Tanzanian administrative district/council for each
campus. Consequently, no district ID was inferred from a city name.

## Revalidated repository totals

| Check | Result |
| --- | ---: |
| Regions inspected | 31 |
| District/council records inspected | 191 |
| Institution seed tuples inspected | 57 |
| Unique institution IDs | 57 |
| Unique institution names | 56 |
| City-named district/council records | 6 |
| Institution tuples under city-named records | 32 |
| Unique institutions under city-named records | 31 |
| Tanga City institution tuples | 0 |
| Tabora City record in seed | 0 |

City-named records are `Arusha City` (1002), `Dar es Salaam City` (2001),
`Dodoma City` (3004), `Mbeya City` (13006), `Mwanza City` (16006), and
`Tanga City` (28011). A city council is not automatically an invalid
administrative council, so these records were not renamed or deleted.

## Evidence decision

All 57 seed names matched an entry in the retrieved TCU directory. The TCU
head-office values were recorded in the CSV, but the source does not provide
enough information to safely map every campus to one of the application's
district IDs. The audit therefore marks all rows
`REQUIRES_MANUAL_REVIEW`, with `Correct District ID` blank. This is intentional:
assigning a district based only on the nearest city or an institution name would
fabricate location data.

The 31 institutions under city-named records require council-level verification
from the institution, TCU campus details, or authoritative Tanzanian
administrative sources before any reassignment. The current seed contains a
duplicate institution name:

- `University of Medical Sciences and Technology (UMST)` — IDs `200012` and
  `200018`, both currently assigned to District ID `2001`.

The duplicate was not deleted because the repository does not establish whether
it represents a duplicate seed row, a second campus, or two Firestore records
with dependent references.

## Migration and dependency result

No migration was executed. No district, institution, branch, or user record was
changed, removed, or deactivated. This preserves all existing IDs and avoids
orphaning users or location references. The static repository does not provide
live Firestore documents or a complete dependency inventory, so production
references must be exported before any future migration.

## Validation checks

| Check | Static seed result |
| --- | --- |
| Missing region or district on institution | None |
| Institution district belongs to another seeded region | None |
| Duplicate institution IDs | None |
| Duplicate institution names | UMST (IDs 200012, 200018) |
| Invalid seeded region IDs | None |
| Invalid seeded district IDs | None |
| Orphaned institution/branch relationships | Not applicable to this seed model; institutions are written as `branches` records |
| Orphaned users caused by migration | No migration performed; live Firestore not available |
| Institutions still under city-named records | 31 unique institutions; unresolved pending evidence |

This audit is not a claim that the nationwide hierarchy is geographically
correct. It is the evidence-backed pre-migration report and explicitly identifies
the records requiring manual council-level verification.
