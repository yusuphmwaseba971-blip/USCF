import { randomUUID } from "node:crypto";
import { cert, getApps, initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { getFirestore } from "firebase-admin/firestore";
import { getMessaging } from "firebase-admin/messaging";

/*
 * ============================================================
 * CCT-USCF APPWRITE FUNCTION
 * ============================================================
 *
 * Production flow:
 *
 * CCT Android
 *     ↓
 * Firebase Authentication
 *     ↓
 * Firebase ID Token
 *     ↓
 * Appwrite Function
 *     ↓
 * Firebase Admin verification
 *     ↓
 * Appwrite Database
 *     ↓
 * community_messages
 *
 * Routes:
 *
 * GET  /api/community/messages/group
 * POST /api/community/messages/group
 *
 * ============================================================
 */

/* ============================================================
 * FIREBASE INITIALIZATION
 * ============================================================
 */

function createFirebaseApp() {
  const existingApps = getApps();

  if (existingApps.length > 0) {
    return existingApps[0];
  }

  const serviceAccountJson =
    process.env.FIREBASE_SERVICE_ACCOUNT_JSON;

  if (serviceAccountJson) {
    let serviceAccount;

    try {
      serviceAccount =
        JSON.parse(serviceAccountJson);
    } catch (error) {
      throw new Error(
        "FIREBASE_SERVICE_ACCOUNT_JSON contains invalid JSON."
      );
    }

    return initializeApp({
      credential: cert(serviceAccount)
    });
  }

  const projectId =
    process.env.FIREBASE_PROJECT_ID;

  const clientEmail =
    process.env.FIREBASE_CLIENT_EMAIL;

  const privateKey =
    process.env.FIREBASE_PRIVATE_KEY;

  if (
    !projectId ||
    !clientEmail ||
    !privateKey
  ) {
    throw new Error(
      "Firebase Admin configuration is incomplete."
    );
  }

  const normalizedPrivateKey =
    privateKey
      .replace(/\\n/g, "\n")
      .replace(/\r\n/g, "\n")
      .trim();

  return initializeApp({
    credential: cert({
      projectId,
      clientEmail,
      privateKey: normalizedPrivateKey
    })
  });
}

const firebaseApp =
  createFirebaseApp();

const auth =
  getAuth(firebaseApp);


/* ============================================================
 * APPWRITE INITIALIZATION
 * ============================================================
 */

const appwriteEndpoint =
  process.env.APPWRITE_ENDPOINT ||
  "https://sgp.cloud.appwrite.io/v1";

const appwriteProjectId =
  process.env.APPWRITE_PROJECT_ID ||
  "cct-uscf";

const appwriteApiKey =
  process.env.APPWRITE_API_KEY;

if (!appwriteProjectId) {
  throw new Error(
    "APPWRITE_PROJECT_ID is not configured."
  );
}

if (!appwriteApiKey) {
  throw new Error(
    "APPWRITE_API_KEY is not configured."
  );
}

const DEFAULT_DATABASE_ID =
  process.env.APPWRITE_DATABASE_ID ||
  "cct-uscf-db";

const ANNOUNCEMENTS_TABLE_ID =
  process.env.APPWRITE_ANNOUNCEMENTS_TABLE_ID ||
  process.env.APPWRITE_CHURCH_ANNOUNCEMENTS_COLLECTION_ID ||
  process.env.APPWRITE_ANNOUNCEMENTS_COLLECTION_ID ||
  "announcements";

const COMMUNITY_MESSAGES_COLLECTION_ID =
  process.env.APPWRITE_COMMUNITY_MESSAGES_COLLECTION_ID ||
  "community_messages";

const CHURCH_ANNOUNCEMENTS_COLLECTION_ID =
  process.env.APPWRITE_CHURCH_ANNOUNCEMENTS_COLLECTION_ID ||
  process.env.APPWRITE_ANNOUNCEMENTS_COLLECTION_ID ||
  "announcements";

const CHURCH_NOTIFICATIONS_COLLECTION_ID =
  process.env.APPWRITE_CHURCH_NOTIFICATIONS_COLLECTION_ID ||
  process.env.APPWRITE_NOTIFICATIONS_COLLECTION_ID ||
  "notifications";

const CHURCH_DEVICE_TOKENS_COLLECTION_ID =
  process.env.APPWRITE_CHURCH_DEVICE_TOKENS_COLLECTION_ID ||
  process.env.APPWRITE_DEVICE_TOKENS_COLLECTION_ID ||
  "device_tokens";

const firebaseDb = getFirestore(firebaseApp);
const firebaseMessaging = getMessaging(firebaseApp);


/* ============================================================
 * SAFE ERROR DIAGNOSTICS
 * ============================================================
 *
 * Never log:
 * - Firebase ID tokens
 * - Authorization headers
 * - Appwrite API keys
 * - Firebase private keys
 * - passwords
 * - credentials
 */

function getErrorDetails(error) {
  if (
    error === null ||
    error === undefined
  ) {
    return {
      name: "UnknownError",
      message: "Unknown error.",
      cause: null,
      stack: null
    };
  }

  if (error instanceof Error) {
    let cause = null;

    if (error.cause !== undefined) {
      if (error.cause instanceof Error) {
        cause = {
          name:
            error.cause.name ||
            "Error",

          message:
            error.cause.message ||
            String(error.cause),

          stack:
            error.cause.stack ||
            null
        };
      } else if (
        typeof error.cause === "object" &&
        error.cause !== null
      ) {
        try {
          cause =
            JSON.stringify(
              error.cause
            );
        } catch {
          cause =
            String(error.cause);
        }
      } else {
        cause =
          String(error.cause);
      }
    }

    return {
      name:
        error.name ||
        "Error",

      message:
        error.message ||
        String(error),

      cause,

      stack:
        error.stack ||
        null
    };
  }

  return {
    name: "UnknownError",
    message: String(error),
    cause: null,
    stack: null
  };
}


function logErrorDetails(
  log,
  error,
  stage
) {
  const details =
    getErrorDetails(error);

  log(
    `[CCT_ERROR] STAGE=${stage}`
  );

  log(
    `[CCT_ERROR] NAME=${details.name}`
  );

  log(
    `[CCT_ERROR] MESSAGE=${details.message}`
  );

  if (
    details.cause !== null &&
    details.cause !== undefined
  ) {
    log(
      `[CCT_ERROR] CAUSE=${details.cause}`
    );
  } else {
    log(
      "[CCT_ERROR] CAUSE=<none>"
    );
  }

  if (details.stack) {
    log(
      `[CCT_ERROR] STACK=${details.stack}`
    );
  }
}


/* ============================================================
 * HTTP RESPONSE HELPERS
 * ============================================================
 */

function jsonResponse(
  res,
  body,
  statusCode = 200
) {
  return res.json(
    body,
    statusCode
  );
}


/* ============================================================
 * HEADER HELPERS
 * ============================================================
 */

function readHeader(req, name) {
  const requestedName = String(name).toLowerCase();
  const candidates = [
    req?.headers,
    req?.header,
    req?.request?.headers
  ];

  for (const headers of candidates) {
    if (!headers) {
      continue;
    }

    if (typeof headers.get === "function") {
      const value = headers.get(name) ?? headers.get(requestedName);
      if (value !== null && value !== undefined) {
        return String(value).trim();
      }
    }

    if (typeof headers === "object") {
      for (const [key, value] of Object.entries(headers)) {
        if (key.toLowerCase() === requestedName &&
            value !== null &&
            value !== undefined) {
          return Array.isArray(value)
            ? value.join(",").trim()
            : String(value).trim();
        }
      }
    }

    if (typeof headers === "function") {
      const value = headers(name);
      if (value !== null && value !== undefined) {
        return String(value).trim();
      }
    }
  }

  return "";
}


/* ============================================================
 * GENERAL UTILITY HELPERS
 * ============================================================
 */

function normalizeString(value) {
  if (
    value === null ||
    value === undefined
  ) {
    return "";
  }

  return String(value).trim();
}


function parseOptionalInt(value) {
  if (
    value === null ||
    value === undefined ||
    value === ""
  ) {
    return null;
  }

  const number =
    Number(value);

  if (!Number.isFinite(number)) {
    return null;
  }

  return Math.trunc(number);
}


function toNumber(value) {
  if (
    value === null ||
    value === undefined ||
    value === ""
  ) {
    return 0;
  }

  const number =
    Number(value);

  return Number.isFinite(number)
    ? number
    : 0;
}


function isAllowedMessageType(value) {
  return [
    "text",
    "image",
    "video",
    "audio"
  ].includes(value);
}


function safeIsoDate(value) {
  if (!value) {
    return new Date().toISOString();
  }

  const date =
    new Date(value);

  if (
    Number.isNaN(
      date.getTime()
    )
  ) {
    return new Date().toISOString();
  }

  return date.toISOString();
}


/* ============================================================
 * APPWRITE DOCUMENT → API MESSAGE
 * ============================================================
 */

function mapMessageDocument(
  document
) {
  return {
    id:
      document.$id ??
      document.id ??
      "",

    messageId:
      document.message_id ??
      "",

    clientMessageId:
      document.client_message_id ??
      "",

    senderUid:
      document.sender_uid ??
      "",

    senderName:
      document.sender_name ??
      "",

    content:
      document.content ??
      "",

    communityId:
      document.community_id ??
      "",

    branchId:
      document.branch_id ??
      null,

    regionId:
      document.region_id ??
      null,

    districtId:
      document.district_id ??
      null,

    organizationalLevel:
      document.organizational_level ??
      document.organization_type ??
      "",

    organizationType:
      document.organization_type ??
      document.organizational_level ??
      "",

    organizationId:
      document.organization_id ??
      "",

    appwriteTeamId:
      document.appwrite_team_id ??
      "",

    messageType:
      document.message_type ??
      "text",

    mediaUrl:
      document.media_url ??
      "",

    thumbnailUrl:
      document.thumbnail_url ??
      "",

    fileName:
      document.file_name ??
      "",

    fileSize:
      toNumber(
        document.file_size
      ),

    duration:
      toNumber(
        document.duration
      ),

    createdAt:
      safeIsoDate(
        document.created_at ??
        document.$createdAt
      ),

    updatedAt:
      safeIsoDate(
        document.updated_at ??
        document.$updatedAt
      )
  };
}


/* ============================================================
 * RESPONSE BUILDERS
 * ============================================================
 */

function buildCreateResponse(
  message
) {
  return {
    success: true,

    message,

    data: message,

    id:
      message.id,

    messageId:
      message.messageId,

    clientMessageId:
      message.clientMessageId
  };
}


function buildListResponse(
  items
) {
  return {
    success: true,

    messages: items,

    data: items,

    items,

    results: items,

    count:
      items.length
  };
}


/* ============================================================
 * FIREBASE AUTHENTICATION
 * ============================================================
 */

async function verifyFirebaseRequest(
  req,
  log
) {
  log("[CCT_FIREBASE_AUTH] Request received");

  const authorization =
    readHeader(
      req,
      "authorization"
    );

  if (!authorization) {
    log("[CCT_FIREBASE_AUTH] Authorization header found: NO");
    const error = new Error(
      "Missing Authorization header."
    );
    error.statusCode = 401;
    throw error;
  }

  log("[CCT_FIREBASE_AUTH] Authorization header found: YES");

  const normalizedAuthorization = authorization.trim();
  let idToken = "";

  const bearerMatch = normalizedAuthorization.match(/^Bearer\s+(.+)$/i);

  if (bearerMatch) {
    idToken = bearerMatch[1].trim();
    log("[CCT_FIREBASE_AUTH] Authorization scheme = Bearer");
  } else if (/^[A-Za-z0-9-_\.]+\.[A-Za-z0-9-_\.]+\.[A-Za-z0-9-_\.=]+$/.test(normalizedAuthorization)) {
    idToken = normalizedAuthorization;
    log("[CCT_FIREBASE_AUTH] Authorization scheme = raw-token");
  } else {
    log("[CCT_FIREBASE_AUTH] Authorization scheme = invalid");
    const error = new Error(
      "Invalid Authorization header. Expected 'Bearer <token>' or a raw Firebase ID token."
    );
    error.statusCode = 401;
    throw error;
  }

  if (!idToken) {
    log("[CCT_FIREBASE_AUTH] Authorization token present: NO");
    const error = new Error(
      "Missing Firebase ID token."
    );
    error.statusCode = 401;
    throw error;
  }

  log("[CCT_FIREBASE_AUTH] Firebase token present: YES");
  log(
    "[CCT_FIREBASE_AUTH] Authorization header found: YES"
  );

  log(
    "[CCT_FIREBASE_AUTH] Firebase ID-token verification START"
  );

  try {
    const firebaseUser =
      await auth.verifyIdToken(
        idToken
      );

    if (
      !firebaseUser ||
      !firebaseUser.uid
    ) {
      const error =
        new Error(
          "Firebase ID-token verification returned no UID."
        );

      error.statusCode = 401;

      throw error;
    }

    log(
      `[CCT_FIREBASE_AUTH] Firebase ID-token verification SUCCESS UID=${firebaseUser.uid}`
    );

    return firebaseUser;
  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Firebase ID-token verification"
    );

    if (
      error &&
      error.statusCode === 401
    ) {
      throw error;
    }

    const authError =
      new Error(
        "Firebase ID-token verification failed."
      );

    authError.statusCode = 401;
    authError.cause = error;

    throw authError;
  }
}


/* ============================================================
 * REQUEST BODY
 * ============================================================
 */

function getQueryValue(req, name) {
  const queryValue =
    req.query?.[name];

  if (
    queryValue !== undefined &&
    queryValue !== null
  ) {
    return Array.isArray(queryValue)
      ? queryValue[0]
      : queryValue;
  }

  const requestUrl =
    req.url ||
    req.path ||
    "";

  if (!requestUrl) {
    return undefined;
  }

  try {
    return new URL(
      requestUrl,
      "https://appwrite.local"
    ).searchParams.get(name) ??
      undefined;
  } catch {
    return undefined;
  }
}

function parseRequestDate(value) {
  if (
    typeof value !==
    "string"
  ) {
    return null;
  }

  const normalizedValue =
    value.replace(
      /(\.\d{3})\d+(Z|[+-]\d{2}:\d{2})$/,
      "$1$2"
    );

  const parsedDate =
    new Date(normalizedValue);

  return Number.isNaN(
    parsedDate.getTime()
  )
    ? null
    : parsedDate;
}

function getRequestBody(req) {
  if (!req.body) {
    return {};
  }

  if (
    typeof req.body ===
    "object"
  ) {
    return req.body;
  }

  if (
    typeof req.body ===
    "string"
  ) {
    if (!req.body.trim()) {
      return {};
    }

    try {
      return JSON.parse(
        req.body
      );
    } catch {
      throw new Error(
        "Request body contains invalid JSON."
      );
    }
  }

  return {};
}

function announcementError(message, statusCode = 400) {
  const error = new Error(message);
  error.statusCode = statusCode;
  return error;
}

async function appwriteCollectionRequest(collectionId, method, path = "", body, queries = []) {
  const queryString = queries.length > 0
    ? `?${queries.map(query => `queries[]=${encodeURIComponent(JSON.stringify(query))}`).join("&")}`
    : "";
  const response = await fetch(
    `${appwriteEndpoint}/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}` +
    `/collections/${encodeURIComponent(collectionId)}/documents${path}${queryString}`,
    {
      method,
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        "X-Appwrite-Project": appwriteProjectId,
        "X-Appwrite-Key": appwriteApiKey
      },
      body: body === undefined ? undefined : JSON.stringify(body)
    }
  );
  const text = await response.text();
  let result = {};
  try { result = text ? JSON.parse(text) : {}; } catch { result = { message: text }; }
  if (!response.ok) {
    throw new Error(`Appwrite request failed (${response.status}): ${text}`);
  }
  return result;
}

async function appwriteTableRowRequest(tableId, method, path = "", body) {
  const response = await fetch(
    `${appwriteEndpoint}/tablesdb/${encodeURIComponent(DEFAULT_DATABASE_ID)}` +
    `/tables/${encodeURIComponent(tableId)}/rows${path}`,
    {
      method,
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        "X-Appwrite-Project": appwriteProjectId,
        "X-Appwrite-Key": appwriteApiKey
      },
      body: body === undefined ? undefined : JSON.stringify(body)
    }
  );

  const text = await response.text();
  let result = {};
  try { result = text ? JSON.parse(text) : {}; } catch { result = { message: text }; }
  if (!response.ok) {
    const error = new Error(
      `Appwrite TablesDB request failed (${response.status}) ` +
      `database=${DEFAULT_DATABASE_ID} table=${tableId}: ${text}`
    );
    error.statusCode = response.status;
    error.appwriteCode = result.code ?? null;
    error.appwriteMessage = result.message ?? null;
    throw error;
  }
  return result;
}

async function appwriteDatabaseRequest(path, method, body) {
  const response = await fetch(
    `${appwriteEndpoint}${path}`,
    {
      method,
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        "X-Appwrite-Project": appwriteProjectId,
        "X-Appwrite-Key": appwriteApiKey
      },
      body: body === undefined ? undefined : JSON.stringify(body)
    }
  );

  const text = await response.text();
  let result = {};
  try { result = text ? JSON.parse(text) : {}; } catch { result = { message: text }; }

  if (!response.ok && response.status !== 409) {
    throw new Error(`Appwrite database request failed (${response.status}): ${text}`);
  }

  return result;
}

async function ensureChurchAnnouncementCollections() {
  const compatibilityCollections = {
    [CHURCH_ANNOUNCEMENTS_COLLECTION_ID]: {
      string: [["title", 255], ["message", 2000], ["sender_uid", 255], ["sender_name", 255], ["target_level", 32], ["created_at", 64]],
      integer: ["region_id", "district_id", "branch_id"]
    },
    "church_announcements": {
      string: [["title", 255], ["message", 2000], ["sender_uid", 255], ["sender_name", 255], ["target_level", 32], ["created_at", 64]],
      integer: ["region_id", "district_id", "branch_id"]
    },
    [CHURCH_NOTIFICATIONS_COLLECTION_ID]: {
      string: [["announcement_id", 64], ["user_uid", 255], ["title", 255], ["message", 2000], ["sender_name", 255], ["target_level", 32], ["created_at", 64]],
      integer: [],
      boolean: ["is_read"]
    },
    "church_notifications": {
      string: [["announcement_id", 64], ["user_uid", 255], ["title", 255], ["message", 2000], ["sender_name", 255], ["target_level", 32], ["created_at", 64]],
      integer: [],
      boolean: ["is_read"]
    },
    [CHURCH_DEVICE_TOKENS_COLLECTION_ID]: {
      string: [["user_uid", 255], ["token", 4096], ["user_name", 255], ["updated_at", 64]],
      integer: ["region_id", "district_id", "branch_id"]
    },
    "church_device_tokens": {
      string: [["user_uid", 255], ["token", 4096], ["user_name", 255], ["updated_at", 64]],
      integer: ["region_id", "district_id", "branch_id"]
    }
  };

  const collectionSchemas = Object.fromEntries(
    Object.entries(compatibilityCollections).filter(([collectionId]) => collectionId && collectionId !== "undefined")
  );

  const collectionsResponse = await appwriteDatabaseRequest(
    `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections?queries[]=${encodeURIComponent(JSON.stringify({ method: "limit", values: [250] }))}`,
    "GET"
  );

  const existingIds = new Set((collectionsResponse.collections || []).map(collection => collection.$id || collection.id).filter(Boolean));

  for (const [collectionId, schema] of Object.entries(collectionSchemas)) {
    if (!existingIds.has(collectionId)) {
      await appwriteDatabaseRequest(
        `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections`,
        "POST",
        {
          collectionId,
          name: collectionId,
          documentSecurity: false,
          permissions: []
        }
      );
      existingIds.add(collectionId);
    }

    for (const [attributeId, size] of schema.string || []) {
      await appwriteDatabaseRequest(
        `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/string`,
        "POST",
        { key: attributeId, size, required: false }
      );
    }

    for (const attributeId of schema.integer || []) {
      await appwriteDatabaseRequest(
        `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/integer`,
        "POST",
        { key: attributeId, required: false }
      );
    }

    for (const attributeId of schema.boolean || []) {
      await appwriteDatabaseRequest(
        `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/boolean`,
        "POST",
        { key: attributeId, required: false, default: false }
      );
    }
  }
}

async function getAnnouncementProfile(firebaseUser) {
  const snapshot = await firebaseDb.collection(
    process.env.FIREBASE_USER_PROFILES_COLLECTION || "users"
  ).doc(firebaseUser.uid).get();
  const profile = snapshot.exists ? snapshot.data() : {};
  return {
    uid: firebaseUser.uid,
    name: normalizeString(profile.fullName || firebaseUser.name || firebaseUser.email || "Church leader"),
    role: normalizeString(profile.role || firebaseUser.role),
    leadershipLevel: normalizeString(profile.leadershipLevel || firebaseUser.leadershipLevel),
    leadershipDuty: normalizeString(profile.leadershipDuty || firebaseUser.leadershipDuty),
    organization: normalizeString(profile.organization || ""),
    regionId: parseOptionalInt(profile.regionId),
    districtId: parseOptionalInt(profile.districtId),
    branchId: parseOptionalInt(profile.branchId)
  };
}

function isAnnouncementLeader(profile) {
  const values = [profile.role, profile.leadershipLevel, profile.leadershipDuty]
    .map(value => normalizeString(value).toLowerCase().replace(/[\s_-]/g, ""));
  return values.some(value =>
    ["leader", "pastor", "priest", "chairman", "national", "regional", "district", "branch"].includes(value)
  );
}

function canSendBranchAnnouncement(profile) {
  return profile.branchId !== null && profile.branchId > 0;
}

function announcementTargets(profile) {
  const targets = [];
  if (isAnnouncementLeader(profile)) {
    targets.push({ level: "National", id: 0, name: "All church members", regionId: null, districtId: null });
  }
  if (profile.regionId) {
    targets.push({ level: "Region", id: profile.regionId, name: "My region", regionId: profile.regionId, districtId: null });
  }
  if (profile.districtId) {
    targets.push({ level: "District", id: profile.districtId, name: "My district", regionId: profile.regionId, districtId: profile.districtId });
  }
  if (profile.branchId) {
    targets.push({ level: "Branch", id: profile.branchId, name: "My branch", regionId: profile.regionId, districtId: profile.districtId });
  }
  return targets;
}

function targetMatchesToken(announcement, token) {
  switch (announcement.target_level) {
    case "National": return true;
    case "Region": return String(token.region_id) === String(announcement.region_id);
    case "District": return String(token.district_id) === String(announcement.district_id);
    case "Branch": return String(token.branch_id) === String(announcement.branch_id);
    default: return false;
  }
}

function mapAnnouncement(document) {
  return {
    id: document.$id || document.id || "",
    announcementId: document.announcement_id || document.$id || document.id || "",
    title: document.title || "",
    message: document.message || "",
    senderName: document.sender_name || "",
    targetLevel: document.target_level || "",
    createdAtUtc: safeIsoDate(document.created_at),
    isRead: document.is_read === true || document.is_read === "true"
  };
}

async function upsertDeviceToken(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);
  const token = normalizeString(body.token);
  if (!token) throw announcementError("FCM token is required.");
  const documentId = Buffer.from(firebaseUser.uid).toString("base64url").slice(0, 36);
  const data = {
      user_uid: firebaseUser.uid,
      token,
      user_name: normalizeString(body.userName || firebaseUser.name || firebaseUser.email || ""),
      region_id: parseOptionalInt(body.regionId),
      district_id: parseOptionalInt(body.districtId),
      branch_id: parseOptionalInt(body.branchId),
      updated_at: new Date().toISOString()
  };
  try {
    await appwriteCollectionRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "PATCH",
      `/${encodeURIComponent(documentId)}`,
      { data }
    );
  } catch (error) {
    if (!String(error.message || "").includes("404")) throw error;
    await appwriteCollectionRequest(CHURCH_DEVICE_TOKENS_COLLECTION_ID, "POST", "", {
      documentId,
      data
    });
  }
  return { success: true };
}

async function getAnnouncementOptions(req, log) {
  const profile = await getAnnouncementProfile(await verifyFirebaseRequest(req, log));
  if (!isAnnouncementLeader(profile) && !canSendBranchAnnouncement(profile)) {
    throw announcementError("Your profile must have a branch assigned before sending announcements.", 403);
  }
  log(`[CCT_ANNOUNCEMENT_OPTIONS] uid=${profile.uid} role=${profile.role || "none"} branchId=${profile.branchId ?? "none"}`);
  return {
    leadershipLevel: profile.leadershipLevel || profile.role,
    organization: profile.organization,
    targets: announcementTargets(profile)
  };
}

async function createChurchAnnouncement(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  const body = getRequestBody(req);
  const title = normalizeString(body.title);
  const message = normalizeString(body.message);
  const targetLevel = normalizeString(body.targetLevel);
  if (!title || !message) throw announcementError("Title and message are required.");
  if (!["National", "Region", "District", "Branch"].includes(targetLevel)) {
    throw announcementError("A valid announcement audience is required.");
  }
  const regionId = parseOptionalInt(body.regionId);
  const districtId = parseOptionalInt(body.districtId);
  const branchId = parseOptionalInt(body.branchId);
  const canSendRequestedAudience =
    isAnnouncementLeader(profile) ||
    (targetLevel === "Branch" && canSendBranchAnnouncement(profile));
  if (!canSendRequestedAudience) {
    throw announcementError("Members can send announcements only to their assigned branch.", 403);
  }
  if ((targetLevel === "Region" && regionId !== profile.regionId) ||
      (targetLevel === "District" && districtId !== profile.districtId) ||
      (targetLevel === "Branch" && branchId !== profile.branchId)) {
    throw announcementError("You can only announce to an audience assigned to your profile.", 403);
  }
  const announcement = {
    title,
    message,
    sender_uid: profile.uid,
    sender_name: profile.name,
    target_level: targetLevel,
    region_id: regionId,
    district_id: districtId,
    branch_id: branchId,
    created_at: new Date().toISOString()
  };
  log(`[CCT_ANNOUNCEMENT_CREATE] uid=${profile.uid} target=${targetLevel} branchId=${branchId ?? "none"}`);
  const announcementId = randomUUID().replace(/-/g, "");
  const tableData = {
    announcement_id: announcementId,
    title,
    content: message,
    sender_uid: profile.uid,
    sender_name: profile.name,
    scope_type: targetLevel,
    region_id: regionId === null ? null : String(regionId),
    district_id: districtId === null ? null : String(districtId),
    branch_id: branchId === null ? null : String(branchId),
    is_active: true
  };

  log(
    `[CCT_ANNOUNCEMENT_STORAGE] database=${DEFAULT_DATABASE_ID} ` +
    `table=${ANNOUNCEMENTS_TABLE_ID} row=${announcementId}`
  );

  if (process.env.APPWRITE_LEGACY_COLLECTIONS === "true") {
    await appwriteCollectionRequest(CHURCH_ANNOUNCEMENTS_COLLECTION_ID, "POST", "", {
      documentId: announcementId,
      data: announcement
    });
  } else {
    await appwriteTableRowRequest(
      ANNOUNCEMENTS_TABLE_ID,
      "POST",
      "",
      { rowId: announcementId, data: tableData }
    );
  }

  let delivered = 0;
  let notificationError = null;
  try {
    const tokenPage = await appwriteCollectionRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [{ method: "limit", values: [500] }]
    );
    const tokens = (tokenPage.documents || []).filter(token => targetMatchesToken(announcement, token));
    const messages = tokens.map(token => ({
      documentId: randomUUID().replace(/-/g, ""),
      data: {
        announcement_id: announcementId,
        user_uid: token.user_uid,
        title,
        message,
        sender_name: profile.name,
        target_level: targetLevel,
        is_read: false,
        created_at: announcement.created_at
      }
    }));
    await Promise.all(messages.map(item =>
      appwriteCollectionRequest(CHURCH_NOTIFICATIONS_COLLECTION_ID, "POST", "", item)
    ));
    delivered = tokens.length;
    if (tokens.length > 0) {
      const delivery = await firebaseMessaging.sendEachForMulticast({
        tokens: tokens.map(token => token.token),
        notification: { title, body: message },
        data: { announcementId, targetLevel }
      });
      delivered = delivery.successCount;
      if (delivery.failureCount > 0) {
        notificationError = `FCM delivery failed for ${delivery.failureCount} device(s).`;
        log(`[CCT_ANNOUNCEMENT_FCM] success=${delivery.successCount} failed=${delivery.failureCount}`);
      }
    }
  } catch (error) {
    notificationError = error instanceof Error ? error.message : String(error);
    log(`[CCT_ANNOUNCEMENT_NOTIFICATION_ERROR] ${notificationError}`);
  }

  return {
    success: true,
    announcementId,
    delivered,
    stored: true,
    notificationError
  };
}

async function listChurchNotifications(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const since = parseRequestDate(getQueryValue(req, "since"));
  const page = await appwriteCollectionRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [500] }]
  );
  return (page.documents || [])
    .filter(document => document.user_uid === firebaseUser.uid)
    .filter(document => !since || new Date(document.created_at || 0) > since)
    .sort((left, right) => new Date(right.created_at || 0) - new Date(left.created_at || 0))
    .map(mapAnnouncement);
}

async function markChurchNotificationRead(req, log, notificationId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const page = await appwriteCollectionRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "GET",
    "",
    undefined,
    [{ method: "equal", attribute: "user_uid", values: [firebaseUser.uid] }, { method: "limit", values: [500] }]
  );
  const document = (page.documents || []).find(item => item.$id === notificationId);
  if (!document) throw announcementError("Notification was not found.", 404);
  await appwriteCollectionRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "PATCH",
    `/${encodeURIComponent(notificationId)}`,
    { data: { is_read: true } }
  );
  return { success: true };
}

async function getUnreadChurchNotificationCount(req, log) {
  const notifications = await listChurchNotifications(req, log);
  return { count: notifications.filter(notification => !notification.isRead).length };
}


/* ============================================================
 * GET GROUP MESSAGES
 * ============================================================
 */

async function listGroupMessages(
  req,
  log
) {
  const firebaseUser =
    await verifyFirebaseRequest(
      req,
      log
    );

  const body =
    getRequestBody(req);

  const communityId =
    normalizeString(
      req.query?.communityId ??
      req.query?.community_id ??
      body.communityId ??
      body.community_id
    );

  if (!communityId) {
    throw new Error(
      "communityId is required."
    );
  }

  const organizationalLevel =
    normalizeString(
      req.query?.organizationalLevel ??
      req.query?.organizational_level ??
      body.organizationalLevel ??
      body.organizational_level ??
      ""
    );

  const branchId =
    parseOptionalInt(
      req.query?.branchId ??
      req.query?.branch_id ??
      body.branchId ??
      body.branch_id
    );

  const regionId =
    parseOptionalInt(
      req.query?.regionId ??
      req.query?.region_id ??
      body.regionId ??
      body.region_id
    );

  const districtId =
    parseOptionalInt(
      req.query?.districtId ??
      req.query?.district_id ??
      body.districtId ??
      body.district_id
    );

  const newerThanValue =
    getQueryValue(req, "newerThan") ??
    getQueryValue(req, "newer_than") ??
    body.newerThan ??
    body.newer_than;

  const newerThan =
    parseRequestDate(
      newerThanValue
    );

  const newerThanMs =
    newerThan &&
    !Number.isNaN(newerThan.getTime())
      ? newerThan.getTime()
      : null;

  let limit =
    parseOptionalInt(
      req.query?.limit ??
      body.limit
    );

  if (
    !limit ||
    limit < 1
  ) {
    limit = 50;
  }

  if (limit > 100) {
    limit = 100;
  }

  log(
    `[CCT_MESSAGE_LIST] UID=${firebaseUser.uid} ` +
    `communityId=${communityId} ` +
    `newerThan=${newerThan?.toISOString() ?? "none"}`
  );

  log(
    "[CCT_MESSAGE_LIST] Appwrite listDocuments START"
  );

  const documents = [];
  let cursorAfter = null;
  let pageCount = 0;

  try {
    do {
      pageCount += 1;

      const queries = [
        JSON.stringify({
          method: "limit",
          values: [100]
        })
      ];

      if (cursorAfter) {
        queries.push(
          JSON.stringify({
            method: "cursorAfter",
            values: [cursorAfter]
          })
        );
      }

      const pageUrl =
        `${appwriteEndpoint}/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}` +
        `/collections/${encodeURIComponent(COMMUNITY_MESSAGES_COLLECTION_ID)}/documents?` +
        queries
          .map(query => `queries[]=${encodeURIComponent(query)}`)
          .join("&");

      const appwriteResponse =
        await fetch(
          pageUrl,
          {
            method: "GET",
            headers: {
              Accept: "application/json",
              "X-Appwrite-Project": appwriteProjectId,
              "X-Appwrite-Key": appwriteApiKey
            }
          }
        );

      const responseText =
        await appwriteResponse.text();

      if (!appwriteResponse.ok) {
        throw new Error(
          `Appwrite list failed (${appwriteResponse.status}): ${responseText}`
        );
      }

      const page =
        JSON.parse(responseText);
      const pageDocuments =
        Array.isArray(page.documents)
          ? page.documents
          : [];

      documents.push(...pageDocuments);
      cursorAfter =
        pageDocuments.length === 100
          ? pageDocuments[pageDocuments.length - 1].$id
          : null;

      log(
        `[CCT_MESSAGE_LIST] Appwrite REST page=${pageCount} ` +
        `count=${pageDocuments.length} total=${documents.length}`
      );
    } while (cursorAfter && pageCount < 100);

    if (cursorAfter) {
      throw new Error(
        "Appwrite message pagination exceeded the safety limit."
      );
    }
  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Appwrite REST list"
    );

    throw error;
  }

  const items =
    documents
      .filter(document => {
        const documentCommunityId =
          normalizeString(document.community_id);

        if (documentCommunityId !== communityId) {
          return false;
        }

        const documentOrganizationType =
          normalizeString(
            document.organization_type ??
            document.organizational_level
          );

        if (
          organizationalLevel &&
          documentOrganizationType !== organizationalLevel
        ) {
          return false;
        }

        if (newerThanMs !== null) {
          const createdAtMs =
            new Date(
              document.created_at ??
              document.$createdAt ??
              0
            ).getTime();

          if (
            Number.isNaN(createdAtMs) ||
            createdAtMs <= newerThanMs
          ) {
            return false;
          }
        }

        const matchesOptionalId =
          (requestedId, documentValue) =>
            requestedId === null ||
            normalizeString(documentValue) ===
              String(requestedId);

        return (
          matchesOptionalId(branchId, document.branch_id) &&
          matchesOptionalId(regionId, document.region_id) &&
          matchesOptionalId(districtId, document.district_id)
        );
      })
      .sort((left, right) => {
        const leftDate =
          new Date(
            left.created_at ??
            left.$createdAt ??
            0
          ).getTime();
        const rightDate =
          new Date(
            right.created_at ??
            right.$createdAt ??
            0
          ).getTime();

        return rightDate - leftDate;
      })
      .map(
        mapMessageDocument
      );

  log(
    `[CCT_MESSAGE_LIST] Filtered response count=${items.length} ` +
    `newerThanApplied=${newerThanMs !== null} ` +
    `pages=${pageCount}`
  );

  return buildListResponse(
    items
  );
}


/* ============================================================
 * POST CREATE GROUP MESSAGE
 * ============================================================
 */

async function createGroupMessage(
  req,
  log
) {
  const body =
    getRequestBody(req);

  log(
    "[CCT_MESSAGE_CREATE] Request body parsed."
  );

  /*
   * Firebase authentication MUST happen
   * before Appwrite message creation.
   */
  const firebaseUser =
    await verifyFirebaseRequest(
      req,
      log
    );

  const communityId =
    normalizeString(
      body.communityId ??
      body.community_id ??
      ""
    );

  if (!communityId) {
    throw new Error(
      "communityId is required."
    );
  }

  const messageType =
    normalizeString(
      body.messageType ??
      body.message_type ??
      "text"
    ).toLowerCase();

  if (
    !isAllowedMessageType(
      messageType
    )
  ) {
    throw new Error(
      "Invalid messageType."
    );
  }

  const content =
    normalizeString(
      body.content ??
      ""
    );

  const mediaUrl =
    normalizeString(
      body.mediaUrl ??
      body.media_url ??
      ""
    );

  if (
    messageType === "text" &&
    !content
  ) {
    throw new Error(
      "Text message content is required."
    );
  }

  if (
    messageType !== "text" &&
    !mediaUrl
  ) {
    throw new Error(
      "mediaUrl is required for media messages."
    );
  }

  /*
   * SECURITY:
   *
   * Firebase verified UID is authoritative.
   *
   * senderUid supplied by the mobile client
   * is deliberately ignored.
   */
  const senderUid =
    firebaseUser.uid;

  const senderName =
    normalizeString(
      body.senderName ??
      body.sender_name ??
      firebaseUser.name ??
      firebaseUser.email ??
      ""
    );

  const clientMessageId =
    normalizeString(
      body.clientMessageId ??
      body.client_message_id ??
      ""
    );

  const messageId =
    clientMessageId ||
    randomUUID().replace(
      /-/g,
      ""
    );

  const branchId =
    parseOptionalInt(
      body.branchId ??
      body.branch_id
    );

  const regionId =
    parseOptionalInt(
      body.regionId ??
      body.region_id
    );

  const districtId =
    parseOptionalInt(
      body.districtId ??
      body.district_id
    );

  const organizationalLevel =
    normalizeString(
      body.organizationalLevel ??
      body.organizational_level ??
      "Branch"
    ) || "Branch";

  const thumbnailUrl =
    normalizeString(
      body.thumbnailUrl ??
      body.thumbnail_url ??
      ""
    );

  const fileName =
    normalizeString(
      body.fileName ??
      body.file_name ??
      ""
    );

  const fileSize =
    toNumber(
      body.fileSize ??
      body.file_size ??
      0
    );

  const duration =
    toNumber(
      body.duration ??
      0
    );

  const appwriteTeamId =
    normalizeString(
      body.appwriteTeamId ??
      body.appwrite_team_id ??
      ""
    );

  const organizationId =
    normalizeString(
      body.organizationId ??
      body.organization_id ??
      ""
    );

  const createdAt =
    new Date().toISOString();

  log(
    "[CCT_MESSAGE_CREATE] Starting create..."
  );

  log(
    `[CCT_MESSAGE_CREATE] MessageId=${messageId}`
  );

  log(
    `[CCT_MESSAGE_CREATE] ClientMessageId=${clientMessageId || messageId}`
  );

  log(
    `[CCT_MESSAGE_CREATE] CommunityId=${communityId}`
  );

  log(
    `[CCT_MESSAGE_CREATE] MessageType=${messageType}`
  );

  log(
    `[CCT_MESSAGE_CREATE] Verified Firebase UID=${senderUid}`
  );

  log(
    `[CCT_MESSAGE_CREATE] BranchId=${branchId ?? ""}`
  );

  const documentData = {
    message_id:
      messageId,

    client_message_id:
      clientMessageId ||
      messageId,

    sender_uid:
      senderUid,

    sender_name:
      senderName,

    content:
      content,

    community_id:
      communityId,

    branch_id:
      branchId !== null
        ? String(branchId)
        : null,

    region_id:
      regionId !== null
        ? String(regionId)
        : null,

    district_id:
      districtId !== null
        ? String(districtId)
        : null,

    organization_type:
      organizationalLevel,

    organization_id:
      organizationId,

    message_type:
      messageType,

    media_url:
      mediaUrl,

    thumbnail_url:
      thumbnailUrl,

    file_name:
      fileName,

    file_size:
      fileSize,

    duration:
      duration,

    created_at:
      createdAt,

    appwrite_team_id:
      appwriteTeamId
  };

  log(
    `[CCT_MESSAGE_CREATE] Database=${DEFAULT_DATABASE_ID}`
  );

  log(
    `[CCT_MESSAGE_CREATE] Collection=${COMMUNITY_MESSAGES_COLLECTION_ID}`
  );

  log("[CCT_MESSAGE_CREATE] Appwrite REST create START");

  let document;

  try {
    const appwriteCreateUrl =
      `${appwriteEndpoint}/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}` +
      `/collections/${encodeURIComponent(COMMUNITY_MESSAGES_COLLECTION_ID)}/documents`;

    const appwriteResponse =
      await fetch(
        appwriteCreateUrl,
        {
          method: "POST",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            "X-Appwrite-Project": appwriteProjectId,
            "X-Appwrite-Key": appwriteApiKey
          },
          body: JSON.stringify({
            documentId: messageId,
            data: documentData
          })
        }
      );

    const responseText =
      await appwriteResponse.text();

    if (!appwriteResponse.ok) {
      throw new Error(
        `Appwrite create failed (${appwriteResponse.status}): ${responseText}`
      );
    }

    document =
      JSON.parse(responseText);

    log(
      `[CCT_MESSAGE_CREATE] Appwrite REST create SUCCESS documentId=${document.$id || document.id || ""}`
    );

  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Appwrite createDocument"
    );

    throw error;
  }

  const message =
    mapMessageDocument(
      document
    );

  log(
    `[CCT_MESSAGE_CREATE] Mapped response MessageId=${message.messageId}`
  );

  log(
    `[CCT_MESSAGE_CREATE] Mapped response ClientMessageId=${message.clientMessageId}`
  );

  log(
    `[CCT_MESSAGE_CREATE] Mapped response CommunityId=${message.communityId}`
  );

  if (!message.messageId) {
    throw new Error(
      "Appwrite document was created but mapped MessageId is empty."
    );
  }

  if (!message.communityId) {
    throw new Error(
      "Appwrite document was created but mapped CommunityId is empty."
    );
  }

  return buildCreateResponse(
    message
  );
}


/* ============================================================
 * ROUTE RESOLUTION
 * ============================================================
 */

function getRoute(req) {
  const url =
    new URL(
      req.url ||
      "https://example.invalid/"
    );

  return (
    url.pathname ||
    req.path ||
    "/"
  )
    .split("?")[0]
    .replace(
      /\/+$/,
      ""
    );
}


/* ============================================================
 * ERROR STATUS
 * ============================================================
 */

function getErrorStatusCode(error) {
  if (
    error &&
    Number.isInteger(
      error.statusCode
    )
  ) {
    return error.statusCode;
  }

  const message =
    error?.message ||
    "";

  if (
    message ===
      "Missing Authorization header." ||
    message ===
      "Invalid Authorization header." ||
    message ===
      "Missing Firebase ID token." ||
    message ===
      "Firebase ID-token verification failed."
  ) {
    return 401;
  }

  if (
    message ===
    "Method not allowed."
  ) {
    return 405;
  }

  return 500;
}


/* ============================================================
 * MAIN APPWRITE FUNCTION
 * ============================================================
 */

export default async ({
  req,
  res,
  log,
  error
}) => {
  let currentStage =
    "Function startup";

  try {
    log(
      "CCT API function started"
    );

    const route =
      getRoute(req);

    log(
      `CCT community route: ${route}`
    );

    log(
      `CCT request method: ${req.method}`
    );

    log(
      `CCT request URL: ${req.url || ""}`
    );

    log(
      `CCT request path: ${req.path || ""}`
    );

      if (process.env.APPWRITE_BOOTSTRAP_COLLECTIONS === "true") {
        await ensureChurchAnnouncementCollections();
      }

    if (route === "/api/church-announcements/options" ||
        route === "api/church-announcements/options") {
      if (req.method !== "GET") throw announcementError("Method not allowed.", 405);
      currentStage = "GET church announcement options";
      return jsonResponse(res, await getAnnouncementOptions(req, log), 200);
    }

    if (route === "/api/church-announcements" ||
        route === "api/church-announcements") {
      if (req.method !== "POST") throw announcementError("Method not allowed.", 405);
      currentStage = "POST church announcement";
      return jsonResponse(res, await createChurchAnnouncement(req, log), 201);
    }

    if (route === "/api/church-announcements/token" ||
        route === "api/church-announcements/token") {
      if (req.method !== "POST") throw announcementError("Method not allowed.", 405);
      currentStage = "POST church device token";
      return jsonResponse(res, await upsertDeviceToken(req, log), 200);
    }

    if (route === "/api/church-announcements/notifications" ||
        route === "api/church-announcements/notifications") {
      if (req.method !== "GET") throw announcementError("Method not allowed.", 405);
      currentStage = "GET church notifications";
      return jsonResponse(res, await listChurchNotifications(req, log), 200);
    }

    if (route === "/api/church-announcements/notifications/unread-count" ||
        route === "api/church-announcements/notifications/unread-count") {
      if (req.method !== "GET") throw announcementError("Method not allowed.", 405);
      currentStage = "GET church unread count";
      return jsonResponse(res, await getUnreadChurchNotificationCount(req, log), 200);
    }

    const readNotificationMatch = route.match(
      /^\/?api\/church-announcements\/notifications\/([^/]+)\/read$/
    );
    if (readNotificationMatch) {
      if (req.method !== "POST") throw announcementError("Method not allowed.", 405);
      currentStage = "POST church notification read";
      return jsonResponse(
        res,
        await markChurchNotificationRead(req, log, decodeURIComponent(readNotificationMatch[1])),
        200
      );
    }

    /*
     * ========================================================
     * COMMUNITY GROUP MESSAGE ROUTE
     * ========================================================
     */

    if (
      route ===
        "/api/community/messages/group" ||
      route ===
        "api/community/messages/group"
    ) {

      /*
       * ------------------------------------------------------
       * GET
       * ------------------------------------------------------
       */

      if (
        req.method === "GET"
      ) {
        currentStage =
          "GET group messages";

        const result =
          await listGroupMessages(
            req,
            log
          );

        return jsonResponse(
          res,
          result,
          200
        );
      }


      /*
       * ------------------------------------------------------
       * POST
       * ------------------------------------------------------
       */

      if (
        req.method === "POST"
      ) {
        currentStage =
          "POST create group message";

        const result =
          await createGroupMessage(
            req,
            log
          );

        return jsonResponse(
          res,
          result,
          200
        );
      }


      /*
       * ------------------------------------------------------
       * OTHER METHODS
       * ------------------------------------------------------
       */

      return jsonResponse(
        res,
        {
          success: false,
          error: "Method not allowed."
        },
        405
      );
    }


    /*
     * ========================================================
     * DEFAULT / HEALTH RESPONSE
     * ========================================================
     */

    return jsonResponse(
      res,
      {
        success: true,

        service:
          "CCT Appwrite API",

        status:
          "online",

        route
      },
      200
    );

  } catch (e) {

    /*
     * --------------------------------------------------------
     * SAFE DIAGNOSTICS
     * --------------------------------------------------------
     */

    logErrorDetails(
      log,
      e,
      currentStage
    );


    /*
     * Preserve Appwrite error logger.
     *
     * This must NEVER replace the original
     * exception if logging itself fails.
     */

    try {
      error(e);
    } catch {
      // Ignore diagnostic logger failure.
    }


    const details =
      getErrorDetails(e);

    const statusCode =
      getErrorStatusCode(e);

    /*
     * --------------------------------------------------------
     * SAFE CLIENT RESPONSE
     * --------------------------------------------------------
     *
     * Never return:
     * - stack traces
     * - Firebase tokens
     * - Authorization headers
     * - private keys
     * - Appwrite API keys
     * - credentials
     */

    return jsonResponse(
      res,
      {
        success: false,

        error:
          details.message ||
          "Internal server error.",
        appwriteCode: e?.appwriteCode ?? null,
        appwriteMessage: e?.appwriteMessage ?? null
      },
      statusCode
    );
  }
};
