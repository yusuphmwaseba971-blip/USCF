export function mergeChurchGroupRows(ensuredGroups, storedGroups) {
  const groupsById = new Map();

  for (const group of [...ensuredGroups, ...storedGroups]) {
    const groupId = normalizeString(group.group_id || group.$id || group.id);
    if (groupId && !groupsById.has(groupId)) {
      groupsById.set(groupId, group);
    }
  }

  return [...groupsById.values()];
}

export function isDistrictOrRegionalMainGroup(group) {
  const scope = normalizeString(group.scope_type).toUpperCase();
  if (scope !== "DISTRICT" && scope !== "REGIONAL") {
    return false;
  }

  const groupType = normalizeString(group.group_type)
    .toUpperCase()
    .replace(/[^A-Z0-9]+/g, "_")
    .replace(/^_+|_+$/g, "");
  const groupName = normalizeString(group.name || group.group_name);

  return groupType === "MAIN" ||
    groupType === "MAIN_GROUP" ||
    groupType.endsWith("_MAIN") ||
    groupType.endsWith("_MAIN_GROUP") ||
    /\bmain\s+group\b/i.test(groupName);
}

export function getGroupScopeId(group, scopeType) {
  const scope = normalizeString(scopeType).toUpperCase();
  const field = scope === "DISTRICT"
    ? group.district_id ?? group.districtId
    : scope === "REGIONAL"
      ? group.region_id ?? group.regionId
      : null;
  const directId = parsePositiveInteger(field);
  if (directId !== null) {
    return directId;
  }

  const scopeId = normalizeString(group.scope_id || group.scopeId);
  const prefix = scope === "DISTRICT"
    ? "DISTRICT"
    : scope === "REGIONAL"
      ? "REGION"
      : "";
  if (!prefix) {
    return null;
  }

  const match = scopeId.match(new RegExp(`^${prefix}[_-](\\d+)$`, "i"));
  return match ? parsePositiveInteger(match[1]) : null;
}

export function groupMatchesProfileScope(group, profile) {
  if (group.is_active === false) {
    return false;
  }

  const scope = normalizeString(group.scope_type).toUpperCase();
  if (scope === "NATIONAL") {
    return true;
  }

  if (scope === "REGIONAL") {
    const groupScopeId = getGroupScopeId(group, scope);
    return groupScopeId !== null &&
      groupScopeId === parsePositiveInteger(profile.regionId ?? profile.region_id);
  }

  if (scope === "DISTRICT") {
    const groupScopeId = getGroupScopeId(group, scope);
    return groupScopeId !== null &&
      groupScopeId === parsePositiveInteger(profile.districtId ?? profile.district_id);
  }

  if (scope === "BRANCH") {
    const groupBranchId = parsePositiveInteger(group.branch_id ?? group.branchId);
    return groupBranchId !== null &&
      groupBranchId === parsePositiveInteger(profile.branchId ?? profile.branch_id);
  }

  return false;
}

export function matchesMainGroupScope(group, profile) {
  if (!isDistrictOrRegionalMainGroup(group)) {
    return false;
  }

  const scope = normalizeString(group.scope_type).toUpperCase();
  const scopeId = getGroupScopeId(group, scope);
  const profileId = parsePositiveInteger(
    scope === "DISTRICT"
      ? profile.districtId ?? profile.district_id
      : profile.regionId ?? profile.region_id
  );

  return scopeId !== null && profileId === scopeId;
}

function normalizeString(value) {
  return typeof value === "string" || typeof value === "number"
    ? String(value).trim()
    : "";
}

function parsePositiveInteger(value) {
  const parsed = Number(value);
  return Number.isSafeInteger(parsed) && parsed > 0 ? parsed : null;
}
