function contentError(message, statusCode = 400) {
  const error = new Error(message);
  error.statusCode = statusCode;
  return error;
}

function readText(value, field, maximumLength, { required = false } = {}) {
  const normalized = typeof value === "string" ? value.trim() : "";
  if (required && !normalized) {
    throw contentError(`${field} is required.`);
  }
  if (normalized.length > maximumLength) {
    throw contentError(`${field} exceeds the maximum length.`);
  }
  return normalized;
}

export function isAboutContentLeader(role) {
  return typeof role === "string" && role.trim().toLowerCase() === "leader";
}

export async function authorizeAboutContentWriter(firebaseUser, readRole) {
  if (!firebaseUser?.uid) {
    throw contentError("Authentication is required.", 401);
  }
  const role = await readRole(firebaseUser.uid);
  if (!isAboutContentLeader(role)) {
    throw contentError("Leader role is required to edit About content.", 403);
  }
  return firebaseUser.uid;
}

export function buildAboutContentData(kind, body, actorUid, now = new Date().toISOString()) {
  if (!body || typeof body !== "object" || Array.isArray(body)) {
    throw contentError("A valid About content payload is required.");
  }

  const common = {
    status: "PUBLISHED",
    updated_by: actorUid,
    updated_at: now
  };

  if (kind === "history") {
    return {
      ...common,
      title: readText(body.title, "Title", 255, { required: true }),
      period: readText(body.period, "Year, date, or period", 128),
      recorded_by: readText(body.recordedBy, "Written/Recorded By", 255, { required: true }),
      recorded_by_role: readText(body.recordedByRole, "Recorder role", 255),
      content: readText(body.content, "Historical description", 12000, { required: true })
    };
  }

  if (kind === "missionVision") {
    return {
      ...common,
      mission: readText(body.mission, "Mission statement", 5000, { required: true }),
      vision: readText(body.vision, "Vision statement", 5000)
    };
  }

  if (kind === "leadership") {
    return {
      ...common,
      user_name: readText(body.userName, "Full name", 255, { required: true }),
      position_name: readText(body.positionName, "Position/office", 255, { required: true }),
      organization_level: readText(body.organizationLevel, "Leadership level", 32),
      organization_id: readText(body.organizationId, "Organization ID", 128),
      organization_name: readText(body.organizationName, "Organization name", 255),
      description: readText(body.description, "Biography/description", 4000),
      term: readText(body.term, "Term/period", 128),
      is_active: true
    };
  }

  throw contentError("Unsupported About content type.");
}

export async function upsertAboutContentDocument({
  collectionId,
  kind,
  body,
  actorUid,
  request,
  now = new Date().toISOString()
}) {
  const data = buildAboutContentData(kind, body, actorUid, now);
  const documentId = typeof body.id === "string" ? body.id.trim() : "";

  if (documentId) {
    const document = await request(
      collectionId,
      "PATCH",
      `/${encodeURIComponent(documentId)}`,
      { data }
    );
    return { success: true, item: document };
  }

  data.created_by = actorUid;
  data.created_at = now;
  if (kind === "history") {
    data.organization_level = "NATIONAL";
    data.organization_id = "NATIONAL";
    data.scope_type = "NATIONAL";
  } else if (kind === "missionVision" || kind === "leadership") {
    data.organization_level = data.organization_level || "NATIONAL";
    data.organization_id = data.organization_id || "NATIONAL";
  }

  const document = await request(collectionId, "POST", "", {
    documentId: "unique()",
    data
  });
  return { success: true, item: document };
}

export async function saveAuthorizedAboutContent({
  firebaseUser,
  readRole,
  collectionId,
  kind,
  body,
  request,
  now
}) {
  const actorUid = await authorizeAboutContentWriter(firebaseUser, readRole);
  return upsertAboutContentDocument({
    collectionId,
    kind,
    body,
    actorUid,
    request,
    now
  });
}
