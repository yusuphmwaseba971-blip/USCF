const positiveId = value => {
  if (value === null || value === undefined || value === "") return null;
  const id = Number(value);
  return Number.isSafeInteger(id) && id > 0 ? id : null;
};

export function announcementTargets(profile) {
  const targets = [];
  const regionId = positiveId(profile.regionId);
  const districtId = positiveId(profile.districtId);
  const branchId = positiveId(profile.branchId);

  if (branchId !== null) {
    targets.push({
      level: "Branch",
      id: branchId,
      name: "My Branch",
      regionId,
      districtId
    });
  }
  if (districtId !== null) {
    targets.push({
      level: "District",
      id: districtId,
      name: "My District",
      regionId,
      districtId
    });
  }
  if (regionId !== null) {
    targets.push({
      level: "Region",
      id: regionId,
      name: "My Region",
      regionId,
      districtId: null
    });
  }

  targets.push({
    level: "National",
    id: null,
    scopeId: "NATIONAL",
    name: "My Nation",
    regionId: null,
    districtId: null
  });
  return targets;
}

export function announcementVisibleToProfile(announcement, profile) {
  const scope = String(announcement.scope_type || announcement.target_level || "")
    .trim()
    .toUpperCase();
  if (scope === "NATIONAL" || scope === "NATION") return true;

  const targetId = scope === "REGION" || scope === "REGIONAL"
    ? announcement.region_id ?? announcement.regionId
    : scope === "DISTRICT"
      ? announcement.district_id ?? announcement.districtId
      : scope === "BRANCH"
        ? announcement.branch_id ?? announcement.branchId
        : null;
  const profileId = scope === "REGION" || scope === "REGIONAL"
    ? profile.regionId
    : scope === "DISTRICT"
      ? profile.districtId
      : scope === "BRANCH"
        ? profile.branchId
        : null;

  return targetId !== null && targetId !== undefined &&
    profileId !== null && profileId !== undefined &&
    String(targetId) === String(profileId);
}
