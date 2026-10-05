export async function getTrustedRegistrationCutoff(firebaseAuth, uid) {
  if (!uid) {
    throw new Error("A verified Firebase UID is required.");
  }

  const account = await firebaseAuth.getUser(uid);
  const creationTime = account?.metadata?.creationTime;
  const registrationTime = creationTime ? new Date(creationTime) : null;

  if (!registrationTime || Number.isNaN(registrationTime.getTime())) {
    const error = new Error(
      `Firebase account ${uid} has no valid server registration timestamp.`
    );
    error.statusCode = 500;
    throw error;
  }

  return registrationTime.toISOString();
}

export function buildGroupMessageQueries({
  communityId,
  organizationalLevel,
  branchId,
  regionId,
  districtId,
  registrationCutoff,
  newerThan,
  cursor,
  limit
}) {
  const queries = [
    { method: "equal", attribute: "community_id", values: [communityId] },
    {
      method: "equal",
      attribute: "organization_type",
      values: [organizationalLevel || "Branch"]
    },
    { method: "greaterThanEqual", attribute: "created_at", values: [registrationCutoff] },
    { method: "limit", values: [limit] },
    {
      method: newerThan ? "orderAsc" : "orderDesc",
      attribute: "created_at"
    }
  ];

  if (branchId !== null) {
    queries.push({ method: "equal", attribute: "branch_id", values: [String(branchId)] });
  }
  if (regionId !== null) {
    queries.push({ method: "equal", attribute: "region_id", values: [String(regionId)] });
  }
  if (districtId !== null) {
    queries.push({ method: "equal", attribute: "district_id", values: [String(districtId)] });
  }
  if (newerThan) {
    queries.push({ method: "greaterThan", attribute: "created_at", values: [newerThan] });
  }
  if (cursor) {
    queries.push({ method: "cursorAfter", values: [cursor] });
  }

  return queries;
}
