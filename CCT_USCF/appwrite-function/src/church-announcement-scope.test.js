import assert from "node:assert/strict";
import test from "node:test";
import {
  announcementTargets,
  announcementVisibleToProfile
} from "./church-announcement-scope.js";

const profile = {
  regionId: 12,
  districtId: 34,
  branchId: 56
};

test("builds scoped announcement targets from the authenticated profile IDs", () => {
  const targets = announcementTargets(profile);

  assert.deepEqual(
    targets.map(target => [target.level, target.id]),
    [
      ["Branch", 56],
      ["District", 34],
      ["Region", 12],
      ["National", null]
    ]
  );
  assert.deepEqual(targets.map(target => target.name), [
    "My Branch",
    "My District",
    "My Region",
    "My Nation"
  ]);
  assert.equal(targets[3].scopeId, "NATIONAL");
});

test("does not invent missing organizational identifiers", () => {
  const targets = announcementTargets({ branchId: 56 });

  assert.deepEqual(
    targets.map(target => [target.level, target.id]),
    [["Branch", 56], ["National", null]]
  );
});

test("limits scoped announcements to users with the matching organization ID", () => {
  for (const [scope, idField, rowField] of [
    ["Branch", "branchId", "branch_id"],
    ["District", "districtId", "district_id"],
    ["Region", "regionId", "region_id"]
  ]) {
    assert.equal(
      announcementVisibleToProfile({ scope_type: scope, [rowField]: profile[idField] }, profile),
      true
    );
    assert.equal(
      announcementVisibleToProfile({ scope_type: scope, [rowField]: 999 }, profile),
      false
    );
  }
  assert.equal(
    announcementVisibleToProfile({ scope_type: "National" }, profile),
    true
  );
  assert.equal(
    announcementVisibleToProfile({ scope_type: "Branch" }, profile),
    false
  );
});
