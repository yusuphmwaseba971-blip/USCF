import assert from "node:assert/strict";
import test from "node:test";
import {
  groupMatchesProfileScope,
  getGroupScopeId,
  isDistrictOrRegionalMainGroup,
  matchesMainGroupScope,
  mergeChurchGroupRows
} from "../src/church-group-visibility.js";

test("stored standard main groups remain listed beside generated standard groups", () => {
  const generated = [
    { group_id: "district-7-leaders", group_type: "LEADERS", is_standard: true }
  ];
  const stored = [
    { group_id: "district-7-leaders", group_type: "LEADERS", is_standard: true },
    {
      group_id: "district-7-main",
      name: "District 7 Main Group",
      group_type: "STANDARD",
      scope_type: "DISTRICT",
      district_id: "7",
      is_standard: true
    }
  ];

  const listed = mergeChurchGroupRows(generated, stored);

  assert.deepEqual(
    listed.map(group => group.group_id),
    ["district-7-leaders", "district-7-main"]
  );
});

test("regional and district main groups are recognized without classifying other scopes", () => {
  assert.equal(isDistrictOrRegionalMainGroup({
    scope_type: "DISTRICT",
    name: "District A Main Group",
    group_type: "STANDARD"
  }), true);
  assert.equal(isDistrictOrRegionalMainGroup({
    scope_type: "REGIONAL",
    group_type: "REGIONAL_MAIN"
  }), true);
  assert.equal(isDistrictOrRegionalMainGroup({
    scope_type: "BRANCH",
    name: "Branch Main Group",
    group_type: "BRANCH"
  }), false);
  assert.equal(isDistrictOrRegionalMainGroup({
    scope_type: "DISTRICT",
    name: "District A Leaders",
    group_type: "LEADERS"
  }), false);
});

test("main-group scope IDs fall back to the matching scope_id", () => {
  assert.equal(getGroupScopeId({
    scope_id: "REGION_12"
  }, "REGIONAL"), 12);
  assert.equal(getGroupScopeId({
    scope_id: "DISTRICT-4"
  }, "DISTRICT"), 4);
  assert.equal(getGroupScopeId({
    scope_id: "REGION_12"
  }, "DISTRICT"), null);
});

test("district and regional main groups are visible only in their assigned scope", () => {
  const districtMain = {
    group_id: "district-4-main",
    name: "District 4 Main Group",
    group_type: "STANDARD",
    scope_type: "DISTRICT",
    scope_id: "DISTRICT_4",
    is_standard: true,
    is_active: true
  };
  assert.equal(groupMatchesProfileScope(districtMain, { districtId: 4 }), true);
  assert.equal(groupMatchesProfileScope(districtMain, { districtId: 5 }), false);

  const regionalMain = {
    group_id: "region-12-main",
    group_type: "REGIONAL_MAIN",
    scope_type: "REGIONAL",
    region_id: "12",
    is_active: true
  };
  assert.equal(groupMatchesProfileScope(regionalMain, { regionId: 12 }), true);
  assert.equal(groupMatchesProfileScope(regionalMain, { regionId: 13 }), false);
});

test("main-group roster matching includes only members of its exact district or region", () => {
  const districtMain = {
    scope_type: "DISTRICT",
    name: "District 4 Main Group",
    district_id: null,
    scope_id: "DISTRICT_4"
  };
  assert.equal(matchesMainGroupScope(districtMain, { district_id: "4" }), true);
  assert.equal(matchesMainGroupScope(districtMain, { districtId: 5 }), false);
  assert.equal(matchesMainGroupScope(districtMain, { regionId: 4 }), false);

  const regionalMain = {
    scope_type: "REGIONAL",
    group_type: "MAIN",
    region_id: 12
  };
  assert.equal(matchesMainGroupScope(regionalMain, { regionId: "12" }), true);
  assert.equal(matchesMainGroupScope(regionalMain, { regionId: 13 }), false);
});
