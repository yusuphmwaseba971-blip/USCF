import { createHash, randomUUID } from "node:crypto";
import { cert, getApps, initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { getFirestore } from "firebase-admin/firestore";
import { getMessaging } from "firebase-admin/messaging";
import {
  buildGroupMessageQueries,
  getTrustedRegistrationCutoff
} from "./group-message-visibility.js";
import {
  saveAuthorizedAboutContent
} from "./about-content.js";

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
  "database-cct-uscf-db";

const ANNOUNCEMENTS_TABLE_ID =
  process.env.APPWRITE_ANNOUNCEMENTS_TABLE_ID ||
  process.env.APPWRITE_CHURCH_ANNOUNCEMENTS_COLLECTION_ID ||
  process.env.APPWRITE_ANNOUNCEMENTS_COLLECTION_ID ||
  "announcements";
const PRAYERS_TABLE_ID = "cct_prayers";
const PRAYER_ACTIONS_TABLE_ID =
  process.env.APPWRITE_PRAYER_ACTIONS_TABLE_ID ||
  "cct_prayer_actions";

const COMMUNITY_MESSAGES_COLLECTION_ID =
  process.env.APPWRITE_COMMUNITY_MESSAGES_COLLECTION_ID ||
  "community_messages";
const GROUPS_TABLE_ID =
  process.env.APPWRITE_GROUPS_TABLE_ID ||
  "cct_groups";
const GROUP_MEMBERS_TABLE_ID =
  process.env.APPWRITE_GROUP_MEMBERS_TABLE_ID ||
  "cct_group_members";

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

const SUPPORT_REQUESTS_COLLECTION_ID =
  process.env.APPWRITE_SUPPORT_REQUESTS_COLLECTION_ID ||
  "support_requests";

const ABOUT_HISTORY_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_HISTORY_COLLECTION_ID || "cct_history";
const ABOUT_MISSION_VISION_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_MISSION_VISION_COLLECTION_ID || "cct_mission_vision";
const ABOUT_LEADERSHIP_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_LEADERSHIP_COLLECTION_ID || "cct_leadership";
const ABOUT_DOCUMENTS_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_DOCUMENTS_COLLECTION_ID || "cct_documents";
const ABOUT_CONSTITUTION_DOCUMENTS_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_CONSTITUTION_DOCUMENTS_COLLECTION_ID || "cct_constitution_documents";
const ABOUT_OFFICIAL_INFORMATION_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_OFFICIAL_INFORMATION_COLLECTION_ID || "cct_contact_information";
const ABOUT_AUTHORITY_COLLECTION_ID =
  process.env.APPWRITE_ABOUT_AUTHORITY_COLLECTION_ID || "cct_leadership_authority";
const ABOUT_PERMISSION_VALUES = Object.freeze([
  "about.history.read",
  "about.history.write",
  "about.leadership.read",
  "about.leadership.write",
  "about.mission_vision.read",
  "about.mission_vision.write",
  "about.documents.read",
  "about.documents.write",
  "about.official_information.read",
  "about.official_information.write"
]);
const ABOUT_AUTHORITY_BOOTSTRAP_UID = normalizeString(process.env.CCT_ABOUT_BOOTSTRAP_UID || "");
const ABOUT_AUTHORITY_BOOTSTRAP_ENABLED = ["1", "true", "yes", "on"].includes(
  String(process.env.CCT_ABOUT_BOOTSTRAP_ENABLED || "").trim().toLowerCase()
);
const ABOUT_PRIVILEGED_WRITE_DISABLED_MESSAGE =
  "Privileged About management is disabled until the authoritative cct_leadership_authority server model is configured and verified.";

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
      ),

    isDeleted:
      document.is_deleted === true,

    deletedAt:
      safeIsoDate(document.deleted_at),

    isEdited:
      document.is_edited === true,

    replyToMessageId:
      document.reply_to_message_id ??
      null,

    replyToSenderName:
      document.reply_to_sender_name ??
      null,

    replyToPreview:
      document.reply_to_preview ??
      null
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

async function appwriteTableRowRequest(tableId, method, path = "", body, queries = []) {
  const queryString = queries.length > 0
    ? `?${queries.map(query => `queries[]=${encodeURIComponent(JSON.stringify(query))}`).join("&")}`
    : "";
  const response = await fetch(
    `${appwriteEndpoint}/tablesdb/${encodeURIComponent(DEFAULT_DATABASE_ID)}` +
    `/tables/${encodeURIComponent(tableId)}/rows${path}${queryString}`,
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

async function ensureAboutCollections() {
  const collectionSchemas = {
    [ABOUT_HISTORY_COLLECTION_ID]: {
      string: [
        ["scope_type", 32], ["title", 255], ["summary", 2000], ["content", 12000],
        ["status", 32], ["organization_level", 32], ["organization_id", 128],
        ["parent_organization_id", 128], ["created_by", 255], ["updated_by", 255],
        ["created_at", 64], ["updated_at", 64], ["period", 128],
        ["recorded_by", 255], ["recorded_by_role", 255]
      ],
      integer: ["region_id", "district_id", "branch_id"]
    },
    [ABOUT_MISSION_VISION_COLLECTION_ID]: {
      string: [
        ["organization_level", 32], ["organization_id", 128], ["mission", 5000],
        ["vision", 5000], ["status", 32], ["created_by", 255], ["updated_by", 255],
        ["created_at", 64], ["updated_at", 64]
      ],
      integer: ["region_id", "district_id", "branch_id"]
    },
    [ABOUT_LEADERSHIP_COLLECTION_ID]: {
      string: [
        ["user_uid", 255], ["user_name", 255], ["position", 255], ["position_name", 255],
        ["scope_type", 32], ["organization_level", 32], ["organization_id", 128],
        ["organization_name", 255], ["description", 4000], ["term", 128], ["status", 32],
        ["created_by", 255], ["updated_by", 255], ["created_at", 64], ["updated_at", 64]
      ],
      integer: ["region_id", "district_id", "branch_id"],
      boolean: ["is_active"]
    },
    [ABOUT_DOCUMENTS_COLLECTION_ID]: {
      string: [
        ["title", 255], ["description", 2000], ["version", 64], ["file_id", 255],
        ["file_url", 2048], ["document_type", 64], ["status", 32], ["uploaded_by", 255],
        ["created_at", 64], ["updated_at", 64]
      ],
      integer: []
    },
    [ABOUT_CONSTITUTION_DOCUMENTS_COLLECTION_ID]: {
      string: [
        ["title", 255], ["description", 2000], ["version", 64], ["file_id", 255],
        ["file_url", 2048], ["document_type", 64], ["status", 32], ["uploaded_by", 255],
        ["created_at", 64], ["updated_at", 64]
      ],
      integer: []
    },
    [ABOUT_OFFICIAL_INFORMATION_COLLECTION_ID]: {
      string: [
        ["support_name", 255], ["official_email", 255], ["official_phone", 255],
        ["support_description", 4000], ["status", 32], ["created_by", 255], ["updated_by", 255],
        ["created_at", 64], ["updated_at", 64]
      ],
      integer: []
    }
  };

  const existingCollectionMigrations = {
    [ABOUT_HISTORY_COLLECTION_ID]: {
      string: [["period", 128], ["recorded_by", 255], ["recorded_by_role", 255]],
      integer: [],
      boolean: []
    },
    [ABOUT_LEADERSHIP_COLLECTION_ID]: {
      string: [["organization_name", 255], ["description", 4000], ["term", 128]],
      integer: [],
      boolean: ["is_active"]
    }
  };

  try {
    const current = await appwriteDatabaseRequest(
      `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections`,
      "GET"
    );
    const existingIds = new Set((current.collections || []).map(collection => normalizeString(collection.$id || collection.collectionId || collection.id)));

    for (const [collectionId, schema] of Object.entries(collectionSchemas)) {
      const exists = existingIds.has(collectionId);
      let existingAttributeIds = new Set();
      let schemaToEnsure = schema;
      if (exists) {
        schemaToEnsure = existingCollectionMigrations[collectionId];
        if (!schemaToEnsure) continue;
        const currentAttributes = await appwriteDatabaseRequest(
          `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes`,
          "GET"
        );
        existingAttributeIds = new Set(
          (currentAttributes.attributes || []).map(attribute => normalizeString(attribute.key || attribute.$id))
        );
      } else {
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
      }

      for (const [attributeId, size] of schemaToEnsure.string || []) {
        if (existingAttributeIds.has(attributeId)) continue;
        await appwriteDatabaseRequest(
          `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/string`,
          "POST",
          { key: attributeId, size, required: false }
        );
      }

      for (const attributeId of schemaToEnsure.integer || []) {
        if (existingAttributeIds.has(attributeId)) continue;
        await appwriteDatabaseRequest(
          `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/integer`,
          "POST",
          { key: attributeId, required: false }
        );
      }

      for (const attributeId of schemaToEnsure.boolean || []) {
        if (existingAttributeIds.has(attributeId)) continue;
        await appwriteDatabaseRequest(
          `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/boolean`,
          "POST",
          { key: attributeId, required: false }
        );
      }
    }
  } catch (error) {
    throw new Error(`About collection bootstrap failed: ${error.message}`);
  }
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
    [SUPPORT_REQUESTS_COLLECTION_ID]: {
      string: [
        ["user_id", 255],
        ["user_email", 255],
        ["user_name", 255],
        ["category", 64],
        ["subject", 255],
        ["message", 5000],
        ["status", 32],
        ["app_version", 128],
        ["platform", 32],
        ["created_at", 64],
        ["updated_at", 64]
      ],
      integer: []
    },
    "support_requests": {
      string: [
        ["user_id", 255],
        ["user_email", 255],
        ["user_name", 255],
        ["category", 64],
        ["subject", 255],
        ["message", 5000],
        ["status", 32],
        ["app_version", 128],
        ["platform", 32],
        ["created_at", 64],
        ["updated_at", 64]
      ],
      integer: []
    }
    "church_device_tokens": {
      string: [["user_uid", 255], ["token", 4096], ["user_name", 255], ["updated_at", 64]],
      integer: ["region_id", "district_id", "branch_id"]
    },
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

async function ensureAboutAuthorityCollection() {
  const collectionSchemas = {
    [ABOUT_AUTHORITY_COLLECTION_ID]: {
      string: [
        ["firebase_uid", 255],
        ["scope_type", 32],
        ["scope_id", 255],
        ["position", 255],
        ["permissions", 4096],
        ["created_by", 255],
        ["updated_by", 255],
        ["created_at", 64],
        ["updated_at", 64]
      ],
      boolean: ["is_active"]
    }
  };

  const collectionIndexes = {
    [ABOUT_AUTHORITY_COLLECTION_ID]: [
      { key: `${ABOUT_AUTHORITY_COLLECTION_ID}_firebase_uid_idx`, type: "key", attributes: ["firebase_uid"] },
      { key: `${ABOUT_AUTHORITY_COLLECTION_ID}_is_active_idx`, type: "key", attributes: ["is_active"] },
      { key: `${ABOUT_AUTHORITY_COLLECTION_ID}_scope_idx`, type: "key", attributes: ["scope_type", "scope_id"] }
    ]
  };

  try {
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

      for (const attributeId of schema.boolean || []) {
        await appwriteDatabaseRequest(
          `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/attributes/boolean`,
          "POST",
          { key: attributeId, required: false, default: true }
        );
      }

      for (const indexSeed of collectionIndexes[collectionId] || []) {
        try {
          await appwriteDatabaseRequest(
            `/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(collectionId)}/indexes`,
            "POST",
            {
              key: indexSeed.key,
              type: indexSeed.type,
              attributes: indexSeed.attributes
            }
          );
        } catch (error) {
          if (!/already exists|409|duplicate/i.test(String(error.message || ""))) {
            throw error;
          }
        }
      }
    }
  } catch (error) {
    throw new Error(`About authority collection bootstrap failed: ${error.message}`);
  }
}

function normalizeAboutPermission(permission) {
  const normalizedPermission = normalizeString(permission).toLowerCase();
  return ABOUT_PERMISSION_VALUES.includes(normalizedPermission) ? normalizedPermission : "";
}

export function normalizeAuthorityPermissions(value) {
  const tokens = [];
  if (Array.isArray(value)) {
    for (const entry of value) {
      const permission = normalizeAboutPermission(entry);
      if (permission) {
        tokens.push(permission);
      }
    }
    return [...new Set(tokens)];
  }

  if (typeof value === "string") {
    const trimmed = value.trim();
    if (!trimmed) {
      return [];
    }

    try {
      const parsed = JSON.parse(trimmed);
      if (Array.isArray(parsed)) {
        return normalizeAuthorityPermissions(parsed);
      }
    } catch {
      // treat as plain text and continue below
    }

    const entries = trimmed
      .split(/[\s,]+/)
      .map(item => item.trim())
      .filter(Boolean);

    return [...new Set(entries.map(item => normalizeAboutPermission(item)).filter(Boolean))];
  }

  return [];
}

function normalizeAuthorityScopeId(scopeType, scopeId) {
  const normalizedScopeType = normalizeAboutScope(scopeType);
  if (normalizedScopeType === "NATIONAL") {
    return "NATIONAL";
  }
  const normalizedScopeId = normalizeString(scopeId);
  return normalizedScopeId || "";
}

export function buildAboutAuthorityRecord(payload, actorUid) {
  const firebaseUid = normalizeString(payload?.firebase_uid ?? payload?.firebaseUid ?? "");
  const scopeType = normalizeAboutScope(payload?.scope_type ?? payload?.scopeType ?? "");
  const scopeId = normalizeAuthorityScopeId(scopeType, payload?.scope_id ?? payload?.scopeId ?? "");
  const permissions = normalizeAuthorityPermissions(payload?.permissions ?? payload?.permissionList ?? []);
  const position = normalizeString(payload?.position ?? payload?.title ?? "");

  if (!firebaseUid) {
    throw announcementError("firebase_uid is required for an authority record.", 400);
  }

  if (!scopeType) {
    throw announcementError("scope_type must be one of National, Region, District, or Branch.", 400);
  }

  if (!scopeId) {
    throw announcementError("scope_id is required for the requested authority scope.", 400);
  }

  if (!permissions.length) {
    throw announcementError("At least one explicit permission is required.", 400);
  }

  if (!position) {
    throw announcementError("position is required for an authority record.", 400);
  }

  const now = new Date().toISOString();
  return {
    firebase_uid: firebaseUid,
    scope_type: scopeType,
    scope_id: scopeId,
    position,
    permissions,
    is_active: payload?.is_active !== false,
    created_at: now,
    updated_at: now,
    created_by: normalizeString(actorUid || ""),
    updated_by: normalizeString(actorUid || "")
  };
}

function normalizeAuthorityRecord(record) {
  if (!record) return null;
  return {
    $id: record.$id || record.id || "",
    firebase_uid: normalizeString(record.firebase_uid ?? record.firebaseUid ?? ""),
    scope_type: normalizeAboutScope(record.scope_type ?? record.scopeType ?? ""),
    scope_id: normalizeAuthorityScopeId(
      record.scope_type ?? record.scopeType ?? "",
      record.scope_id ?? record.scopeId ?? ""
    ),
    position: normalizeString(record.position ?? record.title ?? ""),
    permissions: normalizeAuthorityPermissions(record.permissions ?? []),
    is_active: record.is_active !== false,
    created_at: record.created_at || record.$createdAt || null,
    updated_at: record.updated_at || record.$updatedAt || null,
    created_by: normalizeString(record.created_by ?? record.createdBy ?? ""),
    updated_by: normalizeString(record.updated_by ?? record.updatedBy ?? "")
  };
}

export async function getAboutAuthorityForUser(firebaseUid) {
  const normalizedUid = normalizeString(firebaseUid || "");
  if (!normalizedUid) {
    return [];
  }

  try {
    const response = await appwriteCollectionRequest(
      ABOUT_AUTHORITY_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [
        { method: "equal", attribute: "firebase_uid", values: [normalizedUid] },
        { method: "equal", attribute: "is_active", values: [true] },
        { method: "limit", values: [100] }
      ]
    );

    const documents = Array.isArray(response.documents) ? response.documents : [];
    return documents
      .map(normalizeAuthorityRecord)
      .filter(Boolean)
      .filter(record => record.firebase_uid === normalizedUid && record.is_active !== false);
  } catch (error) {
    if (String(error.message || "").includes("404") || String(error.message || "").includes("does not exist")) {
      return [];
    }
    throw error;
  }
}

export function getAboutAuthorityForScope(firebaseUid, scopeType, scopeId) {
  const uid = normalizeString(firebaseUid || "");
  const normalizedScopeType = normalizeAboutScope(scopeType);
  const normalizedScopeId = normalizeAuthorityScopeId(normalizedScopeType, scopeId);

  return {
    firebaseUid: uid,
    scopeType: normalizedScopeType,
    scopeId: normalizedScopeId,
    valid: Boolean(uid && normalizedScopeType && normalizedScopeId)
  };
}

export function getAboutAuthorityBootstrapConfig() {
  return {
    enabled: ABOUT_AUTHORITY_BOOTSTRAP_ENABLED,
    bootstrapUid: ABOUT_AUTHORITY_BOOTSTRAP_UID
  };
}

export function authorizeAboutPermission({ firebaseUid, permission, scopeType, scopeId, authorityRecords = [] }) {
  const uid = normalizeString(firebaseUid || "");
  const normalizedPermission = normalizeAboutPermission(permission);
  const normalizedScopeType = normalizeAboutScope(scopeType);
  const normalizedScopeId = normalizeAuthorityScopeId(normalizedScopeType, scopeId);

  if (!uid) {
    return { allowed: false, reason: "Firebase UID is required." };
  }

  if (!normalizedPermission) {
    return { allowed: false, reason: "Unknown or unsupported About permission." };
  }

  if (!normalizedScopeType) {
    return { allowed: false, reason: "A valid About scope type is required." };
  }

  if (!normalizedScopeId && normalizedScopeType !== "NATIONAL") {
    return { allowed: false, reason: "A valid scope ID is required for the requested scope." };
  }

  const records = Array.isArray(authorityRecords) ? authorityRecords : [];
  const match = records.find(record => {
    const recordUid = normalizeString(record?.firebase_uid ?? record?.firebaseUid ?? "");
    const recordPermissionList = normalizeAuthorityPermissions(record?.permissions ?? []);
    const recordScopeType = normalizeAboutScope(record?.scope_type ?? record?.scopeType ?? "");
    const recordScopeId = normalizeAuthorityScopeId(recordScopeType, record?.scope_id ?? record?.scopeId ?? "");
    const active = record?.is_active !== false;

    return recordUid === uid &&
      active &&
      recordScopeType === normalizedScopeType &&
      recordScopeId === normalizedScopeId &&
      recordPermissionList.includes(normalizedPermission);
  });

  return match
    ? { allowed: true, reason: "Authorized by active server-owned authority record.", record: normalizeAuthorityRecord(match) }
    : { allowed: false, reason: "The current Firebase identity has no confirmed server-side authority for this About operation." };
}

export function canDelegateAboutAuthority({
  callerUid,
  callerAuthorityRecords = [],
  targetUid,
  targetScopeType,
  targetScopeId,
  requestedPermissions = [],
  existingAuthority = null
}) {
  const caller = normalizeString(callerUid || "");
  const target = normalizeString(targetUid || "");
  const requestedPermissionList = normalizeAuthorityPermissions(requestedPermissions);
  const requestedScopeType = normalizeAboutScope(targetScopeType);
  const requestedScopeId = normalizeAuthorityScopeId(requestedScopeType, targetScopeId);

  if (!caller) {
    return { allowed: false, reason: "Caller Firebase UID is required." };
  }

  if (!requestedScopeType) {
    return { allowed: false, reason: "A valid authority scope type is required." };
  }

  if (!requestedScopeId && requestedScopeType !== "NATIONAL") {
    return { allowed: false, reason: "A valid target scope ID is required." };
  }

  if (!requestedPermissionList.length) {
    return { allowed: false, reason: "At least one explicit permission is required." };
  }

  if (target && target === caller) {
    return { allowed: false, reason: "A caller cannot manage its own authority record." };
  }

  const callerRecords = Array.isArray(callerAuthorityRecords)
    ? callerAuthorityRecords.map(normalizeAuthorityRecord).filter(Boolean)
    : [];

  const scopedCallerRecords = callerRecords.filter(record =>
    record.is_active !== false &&
    normalizeAboutScope(record.scope_type) === requestedScopeType &&
    normalizeAuthorityScopeId(record.scope_type, record.scope_id) === requestedScopeId &&
    arrayContains(record.permissions, "about.leadership.write")
  );

  if (!scopedCallerRecords.length) {
    return {
      allowed: false,
      reason: "The caller is not authorized to manage this exact authority scope."
    };
  }

  const callerPermissions = new Set(
    scopedCallerRecords.flatMap(record => normalizeAuthorityPermissions(record.permissions))
  );

  for (const permission of requestedPermissionList) {
    if (!callerPermissions.has(permission)) {
      return {
        allowed: false,
        reason: "A caller cannot grant permissions it does not hold for the same scope."
      };
    }
  }

  if (existingAuthority) {
    const existingScopeType = normalizeAboutScope(existingAuthority.scope_type ?? existingAuthority.scopeType ?? "");
    const existingScopeId = normalizeAuthorityScopeId(existingScopeType, existingAuthority.scope_id ?? existingAuthority.scopeId ?? "");
    const existingTargetUid = normalizeString(existingAuthority.firebase_uid ?? existingAuthority.firebaseUid ?? "");

    if (existingTargetUid && target && existingTargetUid !== target) {
      return { allowed: false, reason: "Authority target reassignment is not allowed." };
    }

    if (existingScopeType !== requestedScopeType || existingScopeId !== requestedScopeId) {
      return { allowed: false, reason: "Authority scope cannot be changed to a different scope." };
    }
  }

  return { allowed: true, reason: "Caller is allowed to manage this authority record within the exact scope." };
}

function arrayContains(values, item) {
  return Array.isArray(values) && values.includes(item);
}

export function buildAboutAuthorizationContext(firebaseUser, profile = {}) {
  const authorityRecords = Array.isArray(profile.authorityRecords)
    ? profile.authorityRecords.map(normalizeAuthorityRecord).filter(Boolean)
    : [];

  return {
    uid: normalizeString(firebaseUser?.uid || profile.uid || ""),
    email: normalizeString(firebaseUser?.email || profile.email || ""),
    fullName: normalizeString(profile.fullName || profile.full_name || firebaseUser?.name || ""),
    username: normalizeString(profile.username || ""),
    accountType: normalizeString(profile.accountType || profile.account_type || profile.role || profile.existingRole || ""),
    role: normalizeString(profile.role || ""),
    leadershipLevel: normalizeString(profile.leadershipLevel || profile.leadership_level || ""),
    leadershipDuty: normalizeString(profile.leadershipDuty || profile.leadership_duty || ""),
    regionId: parseOptionalInt(profile.regionId ?? profile.region_id),
    districtId: parseOptionalInt(profile.districtId ?? profile.district_id),
    branchId: parseOptionalInt(profile.branchId ?? profile.branch_id),
    organizationScope: "",
    authorityRecords,
    isAuthenticated: Boolean(firebaseUser?.uid)
  };
}

export function authorizeAboutScope(context, scopeType, organization = {}) {
  const requestedScope = normalizeAboutScope(scopeType);
  const requestedScopeId = normalizeAuthorityScopeId(requestedScope, organization.scope_id ?? organization.scopeId ?? organization.id ?? "");
  const requiredPermission = normalizeString(context?.requiredPermission || context?.permission || "about.history.read");
  const normalizedPermission = normalizeAboutPermission(requiredPermission) || "about.history.read";

  if (!requestedScope) {
    return { allowed: false, reason: "A valid About scope is required." };
  }

  if (!context?.uid) {
    return { allowed: false, reason: "Authentication is required." };
  }

  const authorityRecords = Array.isArray(context.authorityRecords)
    ? context.authorityRecords.map(normalizeAuthorityRecord).filter(Boolean)
    : [];

  if (!authorityRecords.length) {
    return {
      allowed: false,
      reason: "The current Firebase identity has no confirmed server-side authority for About content management."
    };
  }

  const result = authorizeAboutPermission({
    firebaseUid: context.uid,
    permission: normalizedPermission,
    scopeType: requestedScope,
    scopeId: requestedScopeId || (requestedScope === "NATIONAL" ? "NATIONAL" : ""),
    authorityRecords
  });

  return result;
}

export function rejectPrivilegedAboutWrite(log, operation, overrideMessage = null) {
  const errorMessage = overrideMessage || ABOUT_PRIVILEGED_WRITE_DISABLED_MESSAGE;
  log?.(`[CCT_ABOUT_AUTHZ] ${operation}: ${errorMessage}`);
  const error = new Error(errorMessage);
  error.statusCode = 403;
  return error;
}

async function getAboutAuthorityPayload(req, log) {
  const body = getRequestBody(req);
  const actorUid = normalizeString((await verifyFirebaseRequest(req, log)).uid || "");
  if (!actorUid) {
    throw announcementError("Firebase UID is required.", 401);
  }
  return { body, actorUid };
}

async function bootstrapAboutAuthority(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);

  if (!ABOUT_AUTHORITY_BOOTSTRAP_ENABLED) {
    throw announcementError("About authority bootstrap is disabled on this server.", 403);
  }

  if (!ABOUT_AUTHORITY_BOOTSTRAP_UID) {
    throw announcementError("CCT_ABOUT_BOOTSTRAP_UID is not configured on the server.", 500);
  }

  const bootstrapUid = normalizeString(firebaseUser.uid || "");
  if (bootstrapUid !== ABOUT_AUTHORITY_BOOTSTRAP_UID) {
    throw announcementError("Bootstrap access denied.", 403);
  }

  const normalizedBody = {
    ...body,
    firebase_uid: bootstrapUid,
    created_by: undefined,
    updated_by: undefined,
    created_at: undefined,
    updated_at: undefined
  };

  const record = buildAboutAuthorityRecord(normalizedBody, bootstrapUid);
  const rowId = normalizeString(body?.rowId || body?.id || `authority_${createHash("sha256").update(`${record.firebase_uid}:${record.scope_type}:${record.scope_id}`).digest("hex").slice(0, 32)}`);
  const response = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "POST",
    "",
    {
      documentId: rowId,
      data: record
    }
  );

  log(`[CCT_ABOUT_BOOTSTRAP] uid=${bootstrapUid} scope=${record.scope_type} scopeId=${record.scope_id}`);
  return {
    success: true,
    authority: normalizeAuthorityRecord({
      ...record,
      $id: response?.$id || response?.id || rowId
    })
  };
}

async function createAboutAuthorityRecord(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);
  const targetUid = normalizeString(body?.firebase_uid ?? body?.firebaseUid ?? "");
  const callerAuthority = await getAboutAuthorityForUser(firebaseUser.uid);

  if (!targetUid) {
    throw announcementError("firebase_uid is required for the target authority record.", 400);
  }

  if (targetUid === firebaseUser.uid) {
    throw announcementError("A caller cannot manage its own authority record.", 403);
  }

  const normalizedBody = {
    ...body,
    firebase_uid: targetUid,
    created_by: undefined,
    updated_by: undefined,
    created_at: undefined,
    updated_at: undefined
  };
  const targetRecord = buildAboutAuthorityRecord(normalizedBody, firebaseUser.uid);
  const delegationResult = canDelegateAboutAuthority({
    callerUid: firebaseUser.uid,
    callerAuthorityRecords: callerAuthority,
    targetUid: targetRecord.firebase_uid,
    targetScopeType: targetRecord.scope_type,
    targetScopeId: targetRecord.scope_id,
    requestedPermissions: targetRecord.permissions
  });

  if (!delegationResult.allowed) {
    throw announcementError(delegationResult.reason, 403);
  }

  try {
    await auth.getUser(targetUid);
  } catch (error) {
    throw announcementError("Target Firebase user was not found.", 400);
  }

  const rowId = normalizeString(body?.rowId || body?.id || `authority_${createHash("sha256").update(`${targetRecord.firebase_uid}:${targetRecord.scope_type}:${targetRecord.scope_id}`).digest("hex").slice(0, 32)}`);
  const response = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "POST",
    "",
    {
      documentId: rowId,
      data: {
        ...targetRecord,
        created_by: firebaseUser.uid,
        updated_by: firebaseUser.uid
      }
    }
  );

  return {
    success: true,
    authority: normalizeAuthorityRecord({
      ...targetRecord,
      $id: response?.$id || response?.id || rowId,
      created_by: firebaseUser.uid,
      updated_by: firebaseUser.uid
    })
  };
}

async function updateAboutAuthorityRecord(req, log, authorityId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const payload = getRequestBody(req);
  const existing = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "GET",
    `/${encodeURIComponent(authorityId)}`
  );
  const normalizedExisting = normalizeAuthorityRecord(existing);

  if (!normalizedExisting || !normalizedExisting.firebase_uid) {
    throw announcementError("Authority record was not found.", 404);
  }

  if (normalizeString(normalizedExisting.firebase_uid) === firebaseUser.uid) {
    throw announcementError("A caller cannot modify its own authority record.", 403);
  }

  const callerAuthority = await getAboutAuthorityForUser(firebaseUser.uid);
  const targetUid = normalizeString(payload?.firebase_uid ?? payload?.firebaseUid ?? normalizedExisting.firebase_uid);
  const targetScopeType = normalizeAboutScope(payload?.scope_type ?? payload?.scopeType ?? normalizedExisting.scope_type);
  const targetScopeId = normalizeAuthorityScopeId(targetScopeType, payload?.scope_id ?? payload?.scopeId ?? normalizedExisting.scope_id);
  const requestedPermissions = normalizeAuthorityPermissions(payload?.permissions ?? payload?.permissionList ?? normalizedExisting.permissions);

  const delegationResult = canDelegateAboutAuthority({
    callerUid: firebaseUser.uid,
    callerAuthorityRecords: callerAuthority,
    targetUid,
    targetScopeType,
    targetScopeId,
    requestedPermissions,
    existingAuthority: normalizedExisting
  });

  if (!delegationResult.allowed) {
    throw announcementError(delegationResult.reason, 403);
  }

  if (targetUid !== normalizedExisting.firebase_uid) {
    throw announcementError("Authority target reassignment is not allowed.", 403);
  }

  const sanitizedPayload = {
    ...payload,
    firebase_uid: normalizedExisting.firebase_uid,
    firebaseUid: normalizedExisting.firebase_uid,
    scope_type: normalizedExisting.scope_type,
    scopeType: normalizedExisting.scope_type,
    scope_id: normalizedExisting.scope_id,
    scopeId: normalizedExisting.scope_id,
    created_by: undefined,
    updated_by: undefined,
    created_at: undefined,
    updated_at: undefined,
    is_active: payload?.is_active !== undefined ? Boolean(payload.is_active) : undefined
  };

  const updatedRecord = {
    ...normalizedExisting,
    ...sanitizedPayload,
    permissions: requestedPermissions,
    updated_at: new Date().toISOString(),
    updated_by: firebaseUser.uid
  };

  const normalized = buildAboutAuthorityRecord(updatedRecord, firebaseUser.uid);
  const response = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "PATCH",
    `/${encodeURIComponent(authorityId)}`,
    { data: normalized }
  );

  return {
    success: true,
    authority: normalizeAuthorityRecord({
      ...normalized,
      $id: response?.$id || response?.id || authorityId
    })
  };
}

async function deleteAboutAuthorityRecord(req, log, authorityId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const existing = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "GET",
    `/${encodeURIComponent(authorityId)}`
  );
  const normalizedExisting = normalizeAuthorityRecord(existing);

  if (!normalizedExisting || !normalizedExisting.firebase_uid) {
    throw announcementError("Authority record was not found.", 404);
  }

  if (normalizeString(normalizedExisting.firebase_uid) === firebaseUser.uid) {
    throw announcementError("A caller cannot deactivate its own authority record.", 403);
  }

  const callerAuthority = await getAboutAuthorityForUser(firebaseUser.uid);
  const delegationResult = canDelegateAboutAuthority({
    callerUid: firebaseUser.uid,
    callerAuthorityRecords: callerAuthority,
    targetUid: normalizedExisting.firebase_uid,
    targetScopeType: normalizedExisting.scope_type,
    targetScopeId: normalizedExisting.scope_id,
    requestedPermissions: normalizedExisting.permissions
  });

  if (!delegationResult.allowed) {
    throw announcementError(delegationResult.reason, 403);
  }

  const response = await appwriteCollectionRequest(
    ABOUT_AUTHORITY_COLLECTION_ID,
    "PATCH",
    `/${encodeURIComponent(authorityId)}`,
    {
      data: {
        is_active: false,
        updated_at: new Date().toISOString(),
        updated_by: firebaseUser.uid
      }
    }
  );

  return {
    success: true,
    id: authorityId,
    deactivated: true,
    authority: normalizeAuthorityRecord({
      ...normalizedExisting,
      ...response,
      is_active: false,
      updated_by: firebaseUser.uid
    })
  };
}

async function getAnnouncementProfile(firebaseUser) {
  const snapshot = await firebaseDb.collection(
    process.env.FIREBASE_USER_PROFILES_COLLECTION || "users"
  ).doc(firebaseUser.uid).get();
  const profile = snapshot.exists ? snapshot.data() : {};
  const branchId = parseOptionalInt(profile.branchId ?? profile.branch_id);
  let branchName = normalizeString(
    profile.institutionName || profile.institution || profile.branchName || ""
  );
  if (!branchName && branchId !== null) {
    branchName = await resolveBranchName(branchId);
  }
  return {
    uid: firebaseUser.uid,
    name: normalizeString(profile.fullName || profile.full_name || firebaseUser.name || firebaseUser.email || "Church leader"),
    role: normalizeString(profile.role || profile.accountType || profile.account_type || firebaseUser.role),
    leadershipLevel: normalizeString(profile.leadershipLevel || profile.leadership_level || firebaseUser.leadershipLevel),
    leadershipDuty: normalizeString(profile.leadershipDuty || profile.leadership_duty || firebaseUser.leadershipDuty),
    organization: normalizeString(profile.organization || ""),
    institutionName: branchName,
    organizationName: normalizeString(profile.organizationName || ""),
    regionId: parseOptionalInt(profile.regionId ?? profile.region_id),
    districtId: parseOptionalInt(profile.districtId ?? profile.district_id),
    branchId,
    accountType: normalizeString(profile.accountType || profile.account_type || profile.role || profile.existingRole || ""),
    createdAt: typeof (profile.createdAt || profile.created_at) === "string"
      ? (profile.createdAt || profile.created_at)
      : profile.createdAt?.toDate?.()?.toISOString?.() || null
  };
}

export function normalizeAboutScope(value) {
  const scope = normalizeString(value).toUpperCase();
  return ["NATIONAL", "REGION", "DISTRICT", "BRANCH"].includes(scope)
    ? scope
    : "";
}

async function listAboutPublishedCollection(req, log, collectionId, kind) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  buildAboutAuthorizationContext(firebaseUser, profile);

  const response = await appwriteCollectionRequest(
    collectionId,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [100] }]
  );
  const rows = Array.isArray(response.documents) ? response.documents : (Array.isArray(response.rows) ? response.rows : []);
  const visible = rows.filter(row => {
    const data = row?.data || row || {};
    const status = normalizeString(data.status || data.Status || "");
    const isPublished = data.is_published === true || data.is_published === "true" || status === "PUBLISHED" || status === "APPROVED" || status === "ACTIVE";
    return isPublished || status === "";
  });

  return {
    success: true,
    kind,
    count: visible.length,
    items: visible.map(document => {
      const data = document?.data || document || {};
      return {
        id: document?.$id || document?.id || "",
        ...data,
        status: normalizeString(data.status || data.Status || "") || "PUBLISHED"
      };
    })
  };
}

async function saveAboutContent(req, log, collectionId, kind) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  return saveAuthorizedAboutContent({
    firebaseUser,
    readRole: async uid => {
      const profile = await firebaseDb.collection("users").doc(uid).get();
      return profile.exists ? profile.data()?.role : null;
    },
    collectionId,
    kind,
    body: getRequestBody(req),
    request: appwriteCollectionRequest
  });
}

async function resolveBranchName(branchId) {
  const branches = firebaseDb.collection(
    process.env.FIREBASE_BRANCHES_COLLECTION || "branches"
  );
  const candidates = [
    ["Id", branchId],
    ["id", branchId],
    ["branchId", branchId],
    ["Id", String(branchId)],
    ["id", String(branchId)],
    ["branchId", String(branchId)]
  ];
  for (const [field, value] of candidates) {
    const snapshot = await branches.where(field, "==", value).limit(1).get();
    if (!snapshot.empty) {
      const data = snapshot.docs[0].data() || {};
      const name = normalizeString(data.Name || data.name || data.branchName || data.institution);
      if (name) return name;
    }
  }
  const byDocumentId = await branches.doc(String(branchId)).get();
  if (byDocumentId.exists) {
    const data = byDocumentId.data() || {};
    return normalizeString(data.Name || data.name || data.branchName || data.institution);
  }
  return "";
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
  const leader = isAnnouncementLeader(profile);
  if (profile.branchId) {
    targets.push({ level: "Branch", id: profile.branchId, name: "My branch", regionId: profile.regionId, districtId: profile.districtId });
  }
  if (leader && profile.districtId) {
    targets.push({ level: "District", id: profile.districtId, name: "My district", regionId: profile.regionId, districtId: profile.districtId });
  }
  if (leader && profile.regionId) {
    targets.push({ level: "Region", id: profile.regionId, name: "My region", regionId: profile.regionId, districtId: null });
  }
  if (leader) {
    targets.push({ level: "National", id: null, name: "National", regionId: null, districtId: null });
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
    message: document.content || document.message || "",
    senderName: document.sender_name || "",
    targetLevel: document.target_level || "",
    createdAtUtc: safeIsoDate(document.created_at),
    isRead: document.is_read === true || document.is_read === "true"
  };
}

function toGuidString(value) {
  const compact = normalizeString(value).replace(/-/g, "");
  return /^[0-9a-f]{32}$/i.test(compact)
    ? `${compact.slice(0, 8)}-${compact.slice(8, 12)}-${compact.slice(12, 16)}-${compact.slice(16, 20)}-${compact.slice(20)}`
    : randomUUID();
}

function identifiersMatch(left, right) {
  const normalizedLeft = normalizeString(left).replace(/-/g, "").toLowerCase();
  const normalizedRight = normalizeString(right).replace(/-/g, "").toLowerCase();
  return normalizedLeft.length > 0 && normalizedLeft === normalizedRight;
}

function notificationRowId(announcementId, userUid) {
  return createHash("sha256")
    .update(`${announcementId}:${userUid}`)
    .digest("hex")
    .slice(0, 36);
}

function announcementVisibleToProfile(announcement, profile) {
  const scope = normalizeString(announcement.scope_type).toLowerCase();
  if (scope === "national") return true;
  if (scope === "region") return String(announcement.region_id ?? "") === String(profile.regionId ?? "");
  if (scope === "district") return String(announcement.district_id ?? "") === String(profile.districtId ?? "");
  if (scope === "branch") return String(announcement.branch_id ?? "") === String(profile.branchId ?? "");
  return false;
}

async function upsertDeviceToken(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);
  const token = normalizeString(body.token);
  if (!token) throw announcementError("FCM token is required.");
  const documentId = createHash("sha256")
    .update(`${firebaseUser.uid}:${token}`)
    .digest("hex")
    .slice(0, 36);
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
    await appwriteTableRowRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "PATCH",
      `/${encodeURIComponent(documentId)}`,
      { data }
    );
  } catch (error) {
    if (!String(error.message || "").includes("404")) throw error;
    await appwriteTableRowRequest(CHURCH_DEVICE_TOKENS_COLLECTION_ID, "POST", "", {
      rowId: documentId,
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

async function createPrayerRequest(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);
  const content = normalizeString(body.content);
  if (!content) throw announcementError("Prayer request content is required.");
  const isPrivate = body.is_private === true || body.isPrivate === true;
  const leaderId = normalizeString(body.leader_id || body.leaderId);
  const rowId = randomUUID().replace(/-/g, "");
  const data = {
    user_id: firebaseUser.uid,
    content,
    leader_id: leaderId || null,
    is_private: isPrivate,
    status: "pending"
  };
  log(`[PRAYER_REQUEST_APPWRITE_CREATE] database=${DEFAULT_DATABASE_ID} table=${PRAYERS_TABLE_ID} uid=${firebaseUser.uid} private=${isPrivate}`);
  const row = await appwriteTableRowRequest(
    PRAYERS_TABLE_ID,
    "POST",
    "",
    { rowId, data }
  );
  log(`[PRAYER_REQUEST_SUCCESS] database=${DEFAULT_DATABASE_ID} table=${PRAYERS_TABLE_ID} row=${row.$id || rowId}`);
  return {
    success: true,
    rowId: row.$id || rowId,
    userId: firebaseUser.uid,
    content: row.content || content,
    isPrivate: row.is_private ?? isPrivate,
    status: row.status || "pending"
  };
}

async function listPrayerRequests(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  let limit = Math.min(Math.max(Number(getQueryValue(req, "limit") || 25), 1), 100);
  const mineOnly = ["1", "true", "yes"].includes(
    String(getQueryValue(req, "mine") || "").toLowerCase()
  );
  const cursorAfter = getQueryValue(req, "cursorAfter") || getQueryValue(req, "cursor_after");
  const newerThan = getQueryValue(req, "newerThan") || getQueryValue(req, "newer_than");
  log(`[PRAYER_FETCH_REQUEST] database=${DEFAULT_DATABASE_ID} table=${PRAYERS_TABLE_ID} limit=${limit} cursorAfter=${cursorAfter || "none"} newerThan=${newerThan || "none"}`);

  // Build Appwrite TablesDB queries honoring the requested limit and optional cursor
  const queries = [
    { method: "orderDesc", attribute: "$createdAt" },
    { method: "limit", values: [limit] }
  ];
  if (cursorAfter) {
    queries.push({ method: "cursorAfter", values: [cursorAfter] });
  }
  if (newerThan) {
    queries.push({ method: "greaterThan", attribute: "$updatedAt", values: [newerThan] });
  }
  if (mineOnly) {
    queries.push({ method: "equal", attribute: "user_id", values: [firebaseUser.uid] });
  }

  const page = await appwriteTableRowRequest(
    PRAYERS_TABLE_ID,
    "GET",
    "",
    undefined,
    queries
  );

  const isLeader = isAnnouncementLeader(profile);
  const visibleRows = (page.rows || [])
    .filter(row => normalizeString(row.status).toLowerCase() !== "archived")
    .filter(row =>
      mineOnly ||
      row.is_private !== true ||
      row.user_id === firebaseUser.uid ||
      isLeader
    );
  const rows = await Promise.all(visibleRows
    .sort((left, right) => new Date(right.$createdAt || 0) - new Date(left.$createdAt || 0))
    .map(async row => ({
      id: row.$id || "",
      userId: row.user_id || "",
      content: row.content || "",
      isPrivate: row.is_private === true,
      status: row.status || "pending",
      createdAtUtc: safeIsoDate(row.$createdAt),
      updatedAtUtc: safeIsoDate(row.$updatedAt || row.$createdAt),
      ...(await getPrayerActionSummaryForUser(row.$id || "", firebaseUser.uid))
    })));

  log(`[PRAYER_FETCH_RESULT] rows=${page.rows?.length || 0} visible=${rows.length} requestedLimit=${limit} mineOnly=${mineOnly}`);
  return { rows };
}

async function getPrayerActionSummaryForUser(prayerId, userUid) {
  const page = await appwriteTableRowRequest(
    PRAYER_ACTIONS_TABLE_ID,
    "GET",
    "",
    undefined,
    [
      { method: "equal", attribute: "prayer_id", values: [prayerId] },
      { method: "limit", values: [5000] }
    ]
  );
  const rows = page.rows || [];
  return {
    prayerCount: Number.isInteger(page.total) ? page.total : rows.length,
    isPrayed: rows.some(row => row.user_uid === userUid)
  };
}

async function recordPrayerAction(req, log, prayerId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  if (!prayerId) throw announcementError("Prayer ID is required.");
  const actionId = createHash("sha256")
    .update(`${prayerId}:${firebaseUser.uid}`)
    .digest("hex")
    .slice(0, 32);
  const data = {
    prayer_id: prayerId,
    user_uid: firebaseUser.uid,
    created_at: new Date().toISOString()
  };

  log(`[PRAYER_I_PRAY_REQUEST] prayerId=${prayerId} uid=${firebaseUser.uid}`);
  try {
    await appwriteTableRowRequest(
      PRAYER_ACTIONS_TABLE_ID,
      "POST",
      "",
      { rowId: actionId, data }
    );
  } catch (error) {
    if (error?.statusCode !== 409) throw error;
    log(`[PRAYER_I_PRAY_DUPLICATE_BLOCK] prayerId=${prayerId} uid=${firebaseUser.uid}`);
    return { success: true, recorded: false };
  }

  log(`[PRAYER_I_PRAY_SUCCESS] prayerId=${prayerId} uid=${firebaseUser.uid}`);
  return { success: true, recorded: true };
}

async function getPrayerActionSummary(req, log, prayerId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  if (!prayerId) throw announcementError("Prayer ID is required.");
  const summary = await getPrayerActionSummaryForUser(prayerId, firebaseUser.uid);
  return {
    prayerId,
    count: summary.prayerCount,
    hasPrayed: summary.isPrayed
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
  const imageUrl = normalizeString(body.imageUrl);
  const attachmentUrl = normalizeString(body.attachmentUrl);
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
  const createdAt = new Date().toISOString();
  const announcement = {
    title,
    message,
    sender_uid: profile.uid,
    sender_name: profile.name,
    target_level: targetLevel,
    region_id: regionId,
    district_id: districtId,
    branch_id: branchId,
    created_at: createdAt
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
    target_level: targetLevel,
    region_id: regionId === null ? null : String(regionId),
    district_id: districtId === null ? null : String(districtId),
    branch_id: branchId === null ? null : String(branchId),
    message,
    created_at: createdAt,
    image_url: imageUrl || null,
    attachment_url: attachmentUrl || null,
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
    const tokenPage = await appwriteTableRowRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [{ method: "limit", values: [500] }]
    );
    const tokens = (tokenPage.rows || []).filter(token => targetMatchesToken(announcement, token));
    const recipients = new Map();
    for (const token of tokens) {
      const uid = normalizeString(token.user_uid);
      if (uid && !recipients.has(uid)) recipients.set(uid, token);
    }
    const messages = [...recipients.entries()].map(([userUid]) => ({
      rowId: notificationRowId(announcementId, userUid),
      data: {
        announcement_id: announcementId,
        user_uid: userUid,
        title,
        message,
        sender_name: profile.name,
        target_level: targetLevel,
        is_read: false,
        created_at: announcement.created_at
      }
    }));
    await Promise.all(messages.map(async item => {
      try {
        await appwriteTableRowRequest(CHURCH_NOTIFICATIONS_COLLECTION_ID, "POST", "", item);
      } catch (error) {
        if (error.statusCode !== 409) throw error;
        await appwriteTableRowRequest(
          CHURCH_NOTIFICATIONS_COLLECTION_ID,
          "PATCH",
          `/${encodeURIComponent(item.rowId)}`,
          { data: { title, message, sender_name: profile.name, target_level: targetLevel } }
        );
      }
    }));
    delivered = recipients.size;
    if (tokens.length > 0) {
      const delivery = await firebaseMessaging.sendEachForMulticast({
        tokens: tokens.map(token => token.token),
        notification: { title: `CCT-USCF • Official Announcement`, body: message },
        data: {
          notification_type: "announcement",
          event_id: announcementId,
          content_id: announcementId,
          announcement_id: announcementId,
          scope_type: targetLevel
        }
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
  const profile = await getAnnouncementProfile(firebaseUser);
  const since = parseRequestDate(getQueryValue(req, "since"));
  log(
    `[ANNOUNCEMENT_FETCH_REQUEST] database=${DEFAULT_DATABASE_ID} ` +
    `table=${ANNOUNCEMENTS_TABLE_ID} scope=authorized-user`
  );
  const page = await appwriteTableRowRequest(
    ANNOUNCEMENTS_TABLE_ID,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [500] }]
  );
  const rows = page.rows || [];
  const notificationPage = await appwriteTableRowRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "GET",
    "",
    undefined,
    [{ method: "equal", attribute: "user_uid", values: [firebaseUser.uid] }, { method: "limit", values: [500] }]
  );
  const readByAnnouncement = new Map(
    (notificationPage.rows || []).map(item => [normalizeString(item.announcement_id).replace(/-/g, "").toLowerCase(), item.is_read === true])
  );
  const visibleRows = rows
    .filter(row => row.is_active !== false)
    .filter(row => announcementVisibleToProfile(row, profile))
    .filter(row => !since || new Date(row.$createdAt || 0) > since)
    .sort((left, right) => new Date(right.$createdAt || 0) - new Date(left.$createdAt || 0));
  log(
    `[ANNOUNCEMENT_FETCH_RESULT] database=${DEFAULT_DATABASE_ID} ` +
    `table=${ANNOUNCEMENTS_TABLE_ID} rows=${rows.length} visible=${visibleRows.length}`
  );
  return visibleRows.map(row => ({
    id: toGuidString(row.$id || row.announcement_id),
    announcementId: toGuidString(row.announcement_id || row.$id),
    title: row.title || "",
    message: row.content || "",
    senderName: row.sender_name || "",
    targetLevel: row.scope_type || "",
    regionId: parseOptionalInt(row.region_id ?? row.region),
    districtId: parseOptionalInt(row.district_id ?? row.district),
    branchId: parseOptionalInt(row.branch_id ?? row.branch),
    imageUrl: row.image_url || "",
    attachmentUrl: row.attachment_url || "",
    expiresAtUtc: safeIsoDate(row.expires_at),
    isActive: row.is_active !== false,
    createdAtUtc: safeIsoDate(row.created_at || row.$createdAt),
    isRead: readByAnnouncement.get(normalizeString(row.announcement_id || row.$id).replace(/-/g, "").toLowerCase()) === true
  }));
}

async function markChurchNotificationRead(req, log, notificationId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const page = await appwriteTableRowRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "GET",
    "",
    undefined,
    [{ method: "equal", attribute: "user_uid", values: [firebaseUser.uid] }, { method: "limit", values: [500] }]
  );
  let row = (page.rows || []).find(item =>
    item.$id === notificationId ||
    identifiersMatch(item.announcement_id, notificationId)
  );
  if (row) {
    await appwriteTableRowRequest(
      CHURCH_NOTIFICATIONS_COLLECTION_ID,
      "PATCH",
      `/${encodeURIComponent(row.$id)}`,
      { data: { is_read: true } }
    );
    log(`[CCT_ANNOUNCEMENT_READ] uid=${firebaseUser.uid} announcement=${row.announcement_id}`);
    return { success: true };
  }

  const announcementPage = await appwriteTableRowRequest(
    ANNOUNCEMENTS_TABLE_ID,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [500] }]
  );
  const announcement = (announcementPage.rows || []).find(item =>
    identifiersMatch(item.announcement_id || item.$id, notificationId)
  );
  if (!announcement) throw announcementError("Announcement was not found.", 404);

  const announcementId = announcement.announcement_id || announcement.$id;
  await appwriteTableRowRequest(
    CHURCH_NOTIFICATIONS_COLLECTION_ID,
    "POST",
    "",
    {
      rowId: notificationRowId(announcementId, firebaseUser.uid),
      data: {
        announcement_id: announcementId,
        user_uid: firebaseUser.uid,
        title: announcement.title || "",
        message: announcement.content || announcement.message || "",
        sender_name: announcement.sender_name || "",
        target_level: announcement.target_level || announcement.scope_type || "",
        is_read: true,
        created_at: announcement.created_at || announcement.$createdAt || new Date().toISOString()
      }
    }
  );
  log(`[CCT_ANNOUNCEMENT_READ] uid=${firebaseUser.uid} announcement=${announcementId} state=created`);
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

function normalizeScopeType(value) {
  const scope = normalizeString(value).toUpperCase();
  return ["NATIONAL", "REGIONAL", "DISTRICT", "BRANCH"].includes(scope)
    ? scope
    : "";
}

function canManageScope(profile, scopeType) {
  const scope = normalizeScopeType(scopeType);
  const leadershipValues = [
    profile.role,
    profile.leadershipLevel,
    profile.leadershipDuty
  ].map(value => normalizeString(value).toLowerCase());
  const isLeader = leadershipValues.some(value =>
    ["leader", "admin", "administrator", "chairman", "pastor", "priest", "coordinator"]
      .some(token => value.includes(token))
  );
  if (!isLeader) return false;
  if (scope === "NATIONAL") return true;
  if (scope === "REGIONAL") return profile.regionId !== null;
  if (scope === "DISTRICT") return profile.districtId !== null;
  if (scope === "BRANCH") return profile.branchId !== null;
  return false;
}

function canCreateScope(profile, scopeType) {
  const scope = normalizeScopeType(scopeType);
  if (!profile || !profile.uid) return false;
  if (scope === "NATIONAL") return true;
  if (scope === "REGIONAL") return profile.regionId !== null;
  if (scope === "DISTRICT") return profile.districtId !== null;
  if (scope === "BRANCH") return profile.branchId !== null;
  return false;
}

function groupBelongsToProfile(group, profile) {
  if (group.is_active === false) return false;
  const scope = normalizeScopeType(group.scope_type);
  if (scope === "NATIONAL") return true;
  if (scope === "REGIONAL") return profile.regionId !== null &&
    String(group.region_id ?? "") === String(profile.regionId);
  if (scope === "DISTRICT") return profile.districtId !== null &&
    String(group.district_id ?? "") === String(profile.districtId);
  return profile.branchId !== null &&
    String(group.branch_id ?? "") === String(profile.branchId);
}

function canManageGroup(group, profile) {
  return normalizeString(group.created_by_uid) === normalizeString(profile.uid);
}

async function canManageSpecificGroup(group, profile) {
  if (!group || !profile || !groupBelongsToProfile(group, profile)) {
    return false;
  }

  if (normalizeString(group.created_by_uid) === normalizeString(profile.uid)) {
    return true;
  }

  const membership = await appwriteTableRowRequest(
    GROUP_MEMBERS_TABLE_ID,
    "GET",
    "",
    undefined,
    [
      { method: "equal", attribute: "group_id", values: [group.group_id] },
      { method: "equal", attribute: "user_uid", values: [profile.uid] },
      { method: "equal", attribute: "is_active", values: [true] },
      { method: "limit", values: [1] }
    ]
  );
  const role = normalizeString(membership.rows?.[0]?.role).toLowerCase();
  return ["owner", "administrator", "admin", "leader"].includes(role);
}

async function isGroupMember(groupId, uid) {
  const rows = await appwriteTableRowRequest(
    GROUP_MEMBERS_TABLE_ID,
    "GET",
    "",
    undefined,
    [
      { method: "equal", attribute: "group_id", values: [groupId] },
      { method: "equal", attribute: "user_uid", values: [uid] },
      { method: "equal", attribute: "is_active", values: [true] },
      { method: "limit", values: [1] }
    ]
  );
  return (rows.rows || []).length > 0;
}

async function getActiveGroupMemberCount(groupId) {
  const result = await appwriteTableRowRequest(
    GROUP_MEMBERS_TABLE_ID,
    "GET",
    "",
    undefined,
    [
      { method: "equal", attribute: "group_id", values: [groupId] },
      { method: "equal", attribute: "is_active", values: [true] },
      { method: "limit", values: [1] }
    ]
  );

  return Number.isFinite(Number(result.total))
    ? Number(result.total)
    : (result.rows || []).length;
}

function groupMemberRowId(groupId, uid) {
  return `member_${createHash("sha256")
    .update(`${groupId}:${uid}`)
    .digest("hex")
    .slice(0, 29)}`;
}

async function getGroupByLogicalId(groupId) {
  const rows = await appwriteTableRowRequest(
    GROUPS_TABLE_ID,
    "GET",
    "",
    undefined,
    [{ method: "equal", attribute: "group_id", values: [groupId] }, { method: "limit", values: [1] }]
  );
  return rows.rows?.[0] || null;
}

function isBranchMainGroup(group) {
  return normalizeScopeType(group.scope_type) === "BRANCH" &&
    normalizeString(group.group_type).toUpperCase() === "BRANCH";
}

function standardGroupHasImplicitAccess(group) {
  if (group.is_standard !== true) return false;
  if (normalizeScopeType(group.scope_type) !== "BRANCH") return true;
  return isBranchMainGroup(group);
}

async function authorizeGroupAccess(groupId, profile) {
  const row = await getGroupByLogicalId(groupId);
  const group = row;
  if (!group || group.is_active === false ||
      !groupBelongsToProfile(group, profile)) {
    const error = new Error("You are not authorized to access this group.");
    error.statusCode = 403;
    throw error;
  }
  return group;
}

async function joinChurchGroup(req, log, groupId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  const group = await authorizeGroupAccess(groupId, profile);
  const existing = await appwriteTableRowRequest(
    GROUP_MEMBERS_TABLE_ID,
    "GET",
    "",
    undefined,
    [
      { method: "equal", attribute: "group_id", values: [group.group_id] },
      { method: "equal", attribute: "user_uid", values: [profile.uid] },
      { method: "limit", values: [1] }
    ]
  );
  const now = new Date().toISOString();
  const current = existing.rows?.[0];
  if (current) {
    if (current.is_active === false) {
      return await appwriteTableRowRequest(
        GROUP_MEMBERS_TABLE_ID,
        "PATCH",
        `/${encodeURIComponent(current.$id)}`,
        { data: { is_active: true, joined_at: now, updated_at: now } }
      );
    }
    return current;
  }
  return await appwriteTableRowRequest(
    GROUP_MEMBERS_TABLE_ID,
    "POST",
    "",
    {
      rowId: groupMemberRowId(group.group_id, profile.uid),
      data: {
        group_id: group.group_id,
        user_uid: profile.uid,
        role: "member",
        joined_at: now,
        is_active: true
      }
    }
  );
}

function mapGroupDocument(document, profile, memberCount = 0, canAccess = true) {
  const data = document;
  const rawGroupType = normalizeString(data.group_type || "CUSTOM").toUpperCase();
  const isBranchPrayer = normalizeScopeType(data.scope_type) === "BRANCH" &&
    rawGroupType === "PRAYER_TEAM";
  return {
    groupId: data.group_id || document.$id || document.id,
    groupName: isBranchPrayer ? "Prayer" : (data.name || data.group_name || ""),
    description: data.description || "",
    groupType: isBranchPrayer ? "PRAYER" : (data.group_type || "CUSTOM"),
    scopeType: data.scope_type || "BRANCH",
    parentGroupId: data.parent_group_id || "",
    regionId: parseOptionalInt(data.region_id),
    districtId: parseOptionalInt(data.district_id),
    branchId: parseOptionalInt(data.branch_id),
    createdByUid: data.created_by_uid || "",
    createdAt: data.created_at || null,
    isActive: data.is_active !== false,
    canManage: canManageGroup(data, profile),
    isStandard: data.is_standard === true,
    iconKey: data.icon_key || "",
    memberCount,
    canAccess
  };
}

const STANDARD_GROUPS = [
  { type: "LEADERS", name: "Leaders", iconKey: "leaders" },
  { type: "PRAYER_TEAM", name: "Prayer Team", iconKey: "prayer" },
  { type: "CHOIR_TEAM", name: "Choir Team", iconKey: "choir" },
  { type: "BIBLE_STUDY", name: "Bible Study", iconKey: "bible" }
];

const BRANCH_STANDARD_GROUPS = [
  { type: "BRANCH", name: "Branch", iconKey: "branch" },
  { type: "BIBLE_STUDY", name: "Bible Study", iconKey: "bible" },
  { type: "CORE_TEAM", name: "Core Team", iconKey: "core" },
  { type: "LEADERS", name: "Leaders", iconKey: "leaders" },
  { type: "PRAYER", name: "Prayer", iconKey: "prayer" }
];

function scopeIdentity(profile, scopeType) {
  const scope = normalizeScopeType(scopeType);
  if (scope === "NATIONAL") return "NATIONAL";
  if (scope === "REGIONAL" && profile.regionId !== null) return `REGION_${profile.regionId}`;
  if (scope === "DISTRICT" && profile.districtId !== null) return `DISTRICT_${profile.districtId}`;
  if (scope === "BRANCH" && profile.branchId !== null) return `BRANCH_${profile.branchId}`;
  return "";
}

function standardGroupDefinitions(profile, scopeType) {
  const scope = normalizeScopeType(scopeType);
  const scopeId = scopeIdentity(profile, scope);
  if (!scopeId) throw announcementError(`Your ${scope.toLowerCase()} scope is missing from your profile.`, 400);
  const definitions = scope === "BRANCH" ? BRANCH_STANDARD_GROUPS : STANDARD_GROUPS;
  const institution = normalizeString(
    profile.institutionName || profile.organizationName || profile.organization
  );
  if (scope === "BRANCH" && !institution) {
    throw announcementError("Your institution/branch name is missing from your profile.", 400);
  }
  return definitions.map(standard => ({
    groupId: `standard-${scope.toLowerCase()}-${scopeId.toLowerCase()}-${standard.type.toLowerCase()}`,
    rowId: `standard_${scope.toLowerCase()}_${scopeId.toLowerCase()}_${standard.type.toLowerCase()}`
      .replace(/[^A-Za-z0-9_]/g, "_")
      .slice(0, 36),
    groupName: standard.type === "BRANCH" ? `${institution} Branch` : standard.name,
    groupType: standard.type,
    iconKey: standard.iconKey,
    scopeType: scope,
    scopeId,
    regionId: scope === "REGIONAL" ? profile.regionId : null,
    districtId: scope === "DISTRICT" ? profile.districtId : null,
    branchId: scope === "BRANCH" ? profile.branchId : null
  }));
}

async function ensureStandardGroups(profile, scopeType) {
  const standardGroups = await Promise.all(
    standardGroupDefinitions(profile, scopeType).map(async definition => {
    const existingRows = await appwriteTableRowRequest(
      GROUPS_TABLE_ID,
      "GET",
      "",
      undefined,
      [{ method: "equal", attribute: "group_id", values: [definition.groupId] }, { method: "limit", values: [1] }]
    );
    let existing = existingRows.rows?.[0];
    if (!existing && definition.groupType === "PRAYER") {
      const legacyPrayerRows = await appwriteTableRowRequest(
        GROUPS_TABLE_ID,
        "GET",
        "",
        undefined,
        [
          { method: "equal", attribute: "scope_id", values: [definition.scopeId] },
          { method: "equal", attribute: "group_type", values: ["PRAYER_TEAM"] },
          { method: "equal", attribute: "is_standard", values: [true] },
          { method: "limit", values: [1] }
        ]
      );
      existing = legacyPrayerRows.rows?.[0];
    }
    if (existing) {
      if (existing.is_active === false) {
        return await appwriteTableRowRequest(
          GROUPS_TABLE_ID,
          "PATCH",
          `/${encodeURIComponent(existing.$id)}`,
          { data: { is_active: true, updated_at: new Date().toISOString() } }
        );
      } else {
        return existing;
      }
    }
    try {
      const created = await appwriteTableRowRequest(
        GROUPS_TABLE_ID,
        "POST",
        "",
        {
          rowId: definition.rowId,
          data: {
            group_id: definition.groupId,
            name: definition.groupName,
            description: `${definition.groupName} group`,
            group_type: definition.groupType,
            scope_type: definition.scopeType,
            scope_id: definition.scopeId,
            region_id: definition.regionId === null ? null : String(definition.regionId),
            district_id: definition.districtId === null ? null : String(definition.districtId),
            branch_id: definition.branchId === null ? null : String(definition.branchId),
            created_by_uid: "system",
            is_standard: true,
            created_at: new Date().toISOString(),
            updated_at: new Date().toISOString(),
            icon_key: definition.iconKey,
            is_active: true
          }
        }
      );
      return created;
    } catch (error) {
      if (error.statusCode !== 409) throw error;
      const concurrentRows = await appwriteTableRowRequest(
        GROUPS_TABLE_ID,
        "GET",
        "",
        undefined,
        [{ method: "equal", attribute: "group_id", values: [definition.groupId] }, { method: "limit", values: [1] }]
      );
      if (!concurrentRows.rows?.[0]) throw error;
      return concurrentRows.rows[0];
    }
    })
  );
  return standardGroups;
}

async function listChurchGroups(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  const requestedScope = normalizeScopeType(
    getQueryValue(req, "scopeType") ?? getQueryValue(req, "scope_type")
  );
  if (!requestedScope) throw announcementError("A valid group scope is required.", 400);
  log(`[CCT_GROUP_PROFILE] scope=${requestedScope} uid=${profile.uid} branchId=${profile.branchId ?? "none"} institution=${profile.institutionName || "none"} role=${profile.role || "none"} leadershipLevel=${profile.leadershipLevel || "none"} leadershipDuty=${profile.leadershipDuty || "none"}`);
  const standardGroups = await ensureStandardGroups(profile, requestedScope);
  const rows = await appwriteTableRowRequest(
    GROUPS_TABLE_ID,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [500] }]
  );
  const groups = [];
  const allRows = [
    ...standardGroups,
    ...(rows.rows || []).filter(row =>
      row.is_standard !== true &&
      normalizeString(row.group_type).toUpperCase() !== "STANDARD")
  ];
  for (const row of allRows) {
    if ((requestedScope && normalizeScopeType(row.scope_type) !== requestedScope) ||
        !groupBelongsToProfile(row, profile)) continue;
    const groupId = row.group_id || row.$id;
    const canAccess = groupBelongsToProfile(row, profile);
    const canManage = await canManageSpecificGroup(row, profile);
    const memberCount = await getActiveGroupMemberCount(groupId);
    groups.push({
      ...mapGroupDocument(row, profile, memberCount, canAccess),
      canManage
    });
  }
  return { groups };
}

async function createChurchGroup(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  const body = getRequestBody(req);
  const name = normalizeString(body.name);
  const description = normalizeString(body.description);
  const groupType = normalizeString(body.groupType || "CUSTOM").toUpperCase();
  const scopeType = normalizeScopeType(body.scopeType);

  if (name.length < 2 || name.length > 120) {
    throw announcementError("Group name must be between 2 and 120 characters.");
  }

  if (!scopeType || !canCreateScope(profile, scopeType)) {
    throw announcementError("You are not authorized to create a group in this scope.", 403);
  }

  if (["BRANCH", "LEADERS", "PRAYER", "PRAYER_TEAM", "CHOIR_TEAM", "BIBLE_STUDY", "CORE_TEAM"].includes(groupType)) {
    const standard = (await ensureStandardGroups(profile, scopeType))
      .find(item => item.group_type === groupType ||
        (groupType === "PRAYER" && item.group_type === "PRAYER_TEAM"));
    if (standard) return mapGroupDocument(standard, profile);
  }

  const existing = await appwriteTableRowRequest(
    GROUPS_TABLE_ID,
    "GET",
    "",
    undefined,
    [{ method: "limit", values: [500] }]
  );
  const normalizedName = name.toLowerCase();
  const duplicate = (existing.rows || []).some(data => {
    return data.is_active !== false &&
      groupBelongsToProfile(data, profile) &&
      normalizeScopeType(data.scope_type) === scopeType &&
      normalizeString(data.name || data.group_name).toLowerCase() === normalizedName;
  });
  if (duplicate) {
    throw announcementError("An active group with this name already exists in the selected scope.", 409);
  }

  const now = new Date().toISOString();
  const groupId = randomUUID();
  const data = {
    group_id: groupId,
    name,
    description: description.slice(0, 2000),
    group_type: groupType.slice(0, 64),
    scope_type: scopeType,
    scope_id: scopeIdentity(profile, scopeType),
    region_id: scopeType === "REGIONAL" ? String(profile.regionId) : null,
    district_id: scopeType === "DISTRICT" ? String(profile.districtId) : null,
    branch_id: scopeType === "BRANCH" ? String(profile.branchId) : null,
    created_by_uid: profile.uid,
    is_standard: false,
    icon_key: "group",
    created_at: now,
    updated_at: now,
    is_active: true
  };

  try {
    const document = await appwriteTableRowRequest(
      GROUPS_TABLE_ID,
      "POST",
      "",
      {
        rowId: groupId.replace(/[^A-Za-z0-9_]/g, "_").slice(0, 36),
        data
      }
    );
    await appwriteTableRowRequest(
      GROUP_MEMBERS_TABLE_ID,
      "POST",
      "",
      {
        rowId: groupMemberRowId(groupId, profile.uid),
        data: {
          group_id: groupId,
          user_uid: profile.uid,
          role: "administrator",
          joined_at: now,
          is_active: true
        }
      }
    );
    return mapGroupDocument(document, profile, 1);
  } catch (error) {
    try {
      await appwriteTableRowRequest(
        GROUPS_TABLE_ID,
        "DELETE",
        `/${encodeURIComponent(groupId.replace(/[^A-Za-z0-9_]/g, "_").slice(0, 36))}`
      );
    } catch (rollbackError) {
      log(`[CCT_GROUP_ROLLBACK_FAILED] group=${groupId} error=${rollbackError.message}`);
    }
    throw error;
  }
}

async function deleteChurchGroup(req, log, groupId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const profile = await getAnnouncementProfile(firebaseUser);
  const row = await getGroupByLogicalId(groupId);
  if (!row || row.is_active === false) {
    throw announcementError("Group was not found.", 404);
  }
  if (row.is_standard === true || isBranchMainGroup(row)) {
    throw announcementError("Standard groups cannot be deleted.", 409);
  }
  const canManage = await canManageSpecificGroup(row, profile);
  if (!canManage) {
    throw announcementError("You are not authorized to delete this group.", 403);
  }
  const updated = await appwriteTableRowRequest(
    GROUPS_TABLE_ID,
    "PATCH",
    `/${encodeURIComponent(row.$id)}`,
    { data: { is_active: false, updated_at: new Date().toISOString() } }
  );
  return { success: true, groupId, isActive: updated.is_active !== false };
}

async function listGroupMessages(
  req,
  log
) {
  const firebaseUser =
    await verifyFirebaseRequest(
      req,
      log
    );

  const profile = await getAnnouncementProfile(firebaseUser);
  const registrationCutoff =
    await getTrustedRegistrationCutoff(
      auth,
      firebaseUser.uid
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

  if (communityId.startsWith("standard-") ||
      /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(communityId)) {
    await authorizeGroupAccess(communityId, profile);
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

  if (
    organizationalLevel.toLowerCase() === "branch" &&
    (!profile.branchId || profile.branchId !== branchId)
  ) {
    const authorizationError = new Error(
      "You are not assigned to this branch."
    );
    authorizationError.statusCode = 403;
    throw authorizationError;
  }

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

  const cursor = normalizeString(
    getQueryValue(req, "cursor") ??
    body.cursor ??
    ""
  );

  const effectiveLimit = Math.min(limit, 50);
  const queries = buildGroupMessageQueries({
    communityId,
    organizationalLevel,
    branchId,
    regionId,
    districtId,
    registrationCutoff,
    newerThan: newerThan && !Number.isNaN(newerThan.getTime())
      ? newerThan.toISOString()
      : null,
    cursor,
    limit: effectiveLimit
  });

  log(
    `[CCT_MESSAGE_LIST] Appwrite TablesDB query ` +
    `communityId=${communityId} branchId=${branchId ?? "none"} ` +
    `registrationCutoff=${registrationCutoff} ` +
    `requestedLimit=${limit} effectiveLimit=${effectiveLimit} ` +
    `cursor=${cursor || "none"}`
  );

  const page = await appwriteTableRowRequest(
    COMMUNITY_MESSAGES_COLLECTION_ID,
    "GET",
    "",
    undefined,
    queries
  );
  const documents = Array.isArray(page.rows)
    ? page.rows
    : (Array.isArray(page.documents) ? page.documents : []);
  const nextCursor = documents.length === effectiveLimit
    ? documents[documents.length - 1].$id
    : null;

  const items =
    documents
      .filter(document => {
        if (document.is_deleted === true) {
          return false;
        }

        const documentCommunityId =
          normalizeString(document.community_id);

        if (documentCommunityId !== communityId) {
          return false;
        }

        const messageCreatedAt = new Date(
          document.created_at ??
          document.$createdAt ??
          0
        ).getTime();
        if (
          Number.isNaN(messageCreatedAt) ||
          messageCreatedAt < Date.parse(registrationCutoff)
        ) {
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
    `requestedLimit=${limit} effectiveLimit=${effectiveLimit} ` +
    `registrationCutoff=${registrationCutoff} ` +
    `earliestReturnedCreatedAt=${items.length > 0
      ? items[items.length - 1].createdAt
      : "none"} ` +
    `cursor=${nextCursor ?? "none"}`
  );

  return {
    ...buildListResponse(items),
    nextCursor
  };
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

  const profile = await getAnnouncementProfile(firebaseUser);
  if (communityId.startsWith("standard-") ||
      /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(communityId)) {
    await authorizeGroupAccess(communityId, profile);
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

  if (organizationalLevel.toLowerCase() === "branch") {
    if (!profile.branchId || profile.branchId !== branchId) {
      const authorizationError = new Error("You are not assigned to this branch.");
      authorizationError.statusCode = 403;
      throw authorizationError;
    }
  }

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
    `[CCT_MESSAGE_CREATE] CreatedAt=${createdAt}`
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
      appwriteTeamId,

    is_deleted:
      false,

    is_edited:
      false,

    reply_to_message_id:
      normalizeString(body.replyToMessageId ?? body.reply_to_message_id ?? "") || null,

    reply_to_sender_name:
      normalizeString(body.replyToSenderName ?? body.reply_to_sender_name ?? "") || null,

    reply_to_preview:
      normalizeString(body.replyToPreview ?? body.reply_to_preview ?? "") || null
  };

  log(
    `[CCT_MESSAGE_CREATE] Database=${DEFAULT_DATABASE_ID}`
  );

  log(
    `[CCT_MESSAGE_CREATE] Collection=${COMMUNITY_MESSAGES_COLLECTION_ID}`
  );

  log("[CCT_MESSAGE_CREATE] Appwrite REST create START");

  let document;
  let wasCreated = false;

  try {
    document = await appwriteTableRowRequest(
      COMMUNITY_MESSAGES_COLLECTION_ID,
      "POST",
      "",
      {
        rowId: messageId,
        data: documentData
      }
    );
    wasCreated = true;

    log(
      `[CCT_MESSAGE_CREATE] Appwrite TablesDB create SUCCESS rowId=${document.$id || document.id || ""}`
    );

  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Appwrite createDocument"
    );

    if (!clientMessageId || error?.statusCode !== 409) {
      throw error;
    }

    log(
      `[CCT_MESSAGE_CREATE] Duplicate row id; checking idempotent retry rowId=${messageId}`
    );

    let existingDocument;
    try {
      existingDocument = await appwriteTableRowRequest(
        COMMUNITY_MESSAGES_COLLECTION_ID,
        "GET",
        `/${encodeURIComponent(messageId)}`
      );
    } catch (lookupError) {
      logErrorDetails(
        log,
        lookupError,
        "Appwrite idempotent message lookup"
      );
      throw error;
    }

    const existingMatchesRequest =
      normalizeString(existingDocument.message_id ?? existingDocument.$id ?? existingDocument.id) === messageId &&
      normalizeString(existingDocument.client_message_id) === clientMessageId &&
      normalizeString(existingDocument.sender_uid) === senderUid &&
      normalizeString(existingDocument.community_id) === communityId &&
      normalizeString(existingDocument.content) === content;

    if (!existingMatchesRequest) {
      throw error;
    }

    document = existingDocument;
    log(
      `[CCT_MESSAGE_CREATE] Idempotent retry reused rowId=${messageId}`
    );
  }

  const message =
    mapMessageDocument(
      document
    );

  if (wasCreated) {
    await notifyBranchMessageRecipients(
      message,
      firebaseUser.uid,
      log
    );
  }

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

async function notifyBranchMessageRecipients(message, senderUid, log) {
  const groupId = normalizeString(message.communityId);
  if (!groupId) return;

  try {
    const memberPage = await appwriteTableRowRequest(
      GROUP_MEMBERS_TABLE_ID,
      "GET",
      "",
      undefined,
      [
        { method: "equal", attribute: "group_id", values: [groupId] },
        { method: "equal", attribute: "is_active", values: [true] },
        { method: "limit", values: [100] }
      ]
    );
    const memberUids = new Set(
      (memberPage.rows || [])
        .map(member => normalizeString(member.user_uid))
        .filter(uid => uid && uid !== senderUid)
    );
    if (!memberUids.size) return;
    const tokenPage = await appwriteTableRowRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [{ method: "limit", values: [500] }]
    );
    const tokens = (tokenPage.rows || tokenPage.documents || [])
      .filter(token => memberUids.has(normalizeString(token.user_uid)))
      .map(token => normalizeString(token.token))
      .filter(Boolean);
    if (!tokens.length) return;

    const preview = message.isDeleted
      ? "Message deleted"
      : normalizeString(message.content).slice(0, 120);
    const result = await firebaseMessaging.sendEachForMulticast({
      tokens,
      notification: {
        title: `CCT-USCF • ${message.senderName || "Church Group"}`,
        body: preview
      },
      data: {
        notification_type: "group_message",
        event_id: normalizeString(message.messageId),
        content_id: normalizeString(message.messageId),
        group_id: groupId,
        message_id: normalizeString(message.messageId),
        route: "group_message",
        target_id: normalizeString(groupId)
      }
    });
    log(`[FCM] Group notification target group=${groupId} sent=${result.successCount} failed=${result.failureCount}`);
  } catch (error) {
    log(`[FCM] Group notification failed group=${groupId}: ${error.message}`);
  }
}

async function updateGroupMessage(req, log, messageId, deleted) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const row = await appwriteTableRowRequest(
    COMMUNITY_MESSAGES_COLLECTION_ID,
    "GET",
    `/${encodeURIComponent(messageId)}`
  );

  if (normalizeString(row.sender_uid) !== firebaseUser.uid) {
    const authorizationError = new Error(
      "You are not authorized to change this message."
    );
    authorizationError.statusCode = 403;
    throw authorizationError;
  }

  const body = getRequestBody(req);
  const now = new Date().toISOString();
  const data = deleted
    ? {
        content: "Message deleted",
        is_deleted: true,
        deleted_at: now,
        updated_at: now
      }
    : {
        content: normalizeString(body.content ?? ""),
        is_edited: true,
        updated_at: now
      };

  if (!deleted && !data.content) {
    throw new Error("Message content is required.");
  }

  const updated = await appwriteTableRowRequest(
    COMMUNITY_MESSAGES_COLLECTION_ID,
    "PATCH",
    `/${encodeURIComponent(messageId)}`,
    { data }
  );

  return mapMessageDocument(updated);
}

const CCT_POSTS_COLLECTION_ID = "cct_posts";
const CCT_POST_LIKES_TABLE_ID =
  process.env.APPWRITE_CCT_POST_LIKES_TABLE_ID || "cct_post_likes";
const CCT_POST_COMMENTS_TABLE_ID =
  process.env.APPWRITE_CCT_POST_COMMENTS_TABLE_ID || "cct_post_comments";

function mapCctPostDocument(document, interaction = {}) {
  const data = document?.data || document || {};
  return {
    id: document.$id || document.id,
    userId: normalizeString(data.user_id),
    content: normalizeString(data.content),
    postType: normalizeString(data.post_type),
    mediaType: normalizeString(data.media_type || "none"),
    mediaUrl: data.media_url || null,
    siaObjectId: data.sia_object_id || null,
    mediaSize: data.media_size ?? null,
    status: normalizeString(data.status),
    isPublished: data.is_published === true || data.is_published === "true",
    createdAtUtc: safeIsoDate(document.$createdAt || data.created_at),
    updatedAtUtc: safeIsoDate(document.$updatedAt || data.updated_at || document.$createdAt)
    ,likeCount: interaction.likeCount || 0
    ,commentCount: interaction.commentCount || 0
    ,likedByCurrentUser: interaction.likedByCurrentUser === true
  };
}

async function listCctPosts(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const url = new URL(req.url);
  const limit = Math.min(Math.max(parseOptionalInt(url.searchParams.get("limit")) || 20, 1), 50);
  const offset = Math.max(parseOptionalInt(url.searchParams.get("offset")) || 0, 0);
  const scope = normalizeString(url.searchParams.get("scope")).toLowerCase();
  const queries = [
    { method: "equal", attribute: "is_published", values: [true] },
    { method: "equal", attribute: "status", values: ["published"] },
    { method: "orderDesc", attribute: "$createdAt" },
    { method: "limit", values: [limit] }
  ];
  if (scope === "national") {
    queries.splice(2, 0, { method: "equal", attribute: "post_type", values: ["FullCommunity"] });
  }
  if (offset > 0) {
    queries.splice(queries.length - 1, 0, { method: "offset", values: [offset] });
  }
  const result = await appwriteTableRowRequest(
    CCT_POSTS_COLLECTION_ID,
    "GET",
    "",
    undefined,
    queries
  );
  log(`[CCT_POSTS_FETCH] scope=${scope || "all"} offset=${offset} requestedLimit=${limit} rows=${result.rows?.length || 0}`);
  return Promise.all((result.rows || []).map(async row => {
    const postId = row.$id || row.id;
    const [likes, userLike, comments] = await Promise.all([
      appwriteTableRowRequest(CCT_POST_LIKES_TABLE_ID, "GET", "", undefined, [
        { method: "equal", attribute: "post_id", values: [postId] },
        { method: "limit", values: [1] }
      ]),
      appwriteTableRowRequest(CCT_POST_LIKES_TABLE_ID, "GET", "", undefined, [
        { method: "equal", attribute: "post_id", values: [postId] },
        { method: "equal", attribute: "user_id", values: [firebaseUser.uid] },
        { method: "limit", values: [1] }
      ]),
      appwriteTableRowRequest(CCT_POST_COMMENTS_TABLE_ID, "GET", "", undefined, [
        { method: "equal", attribute: "post_id", values: [postId] },
        { method: "limit", values: [1] }
      ])
    ]);
    const likeRows = likes.rows || [];
    return mapCctPostDocument(row, {
      likeCount: likes.total ?? likeRows.length,
      commentCount: comments.total ?? (comments.rows || []).length,
      likedByCurrentUser: (userLike.rows || []).length > 0
    });
  }));
}

async function getCctPost(req, postId) {
  await appwriteTableRowRequest(CCT_POSTS_COLLECTION_ID, "GET", `/${encodeURIComponent(postId)}`);
}

async function toggleCctPostLike(req, log, postId, liked) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  await getCctPost(req, postId);
  const rowId = createHash("sha256").update(`${postId}:${firebaseUser.uid}`).digest("hex").slice(0, 36);
  if (liked) {
    try {
      await appwriteTableRowRequest(CCT_POST_LIKES_TABLE_ID, "DELETE", `/${encodeURIComponent(rowId)}`);
    } catch (error) {
      if (error.statusCode !== 404) throw error;
    }
  } else {
    try {
      await appwriteTableRowRequest(CCT_POST_LIKES_TABLE_ID, "POST", "", {
        rowId,
        data: { post_id: postId, user_id: firebaseUser.uid }
      });
    } catch (error) {
      if (error.statusCode !== 409) throw error;
    }
  }
  const likes = await appwriteTableRowRequest(CCT_POST_LIKES_TABLE_ID, "GET", "", undefined, [
    { method: "equal", attribute: "post_id", values: [postId] },
    { method: "limit", values: [500] }
  ]);
  return {
    liked: !liked,
    count: likes.total ?? (likes.rows || []).length
  };
}

async function listCctPostComments(req, log, postId) {
  await verifyFirebaseRequest(req, log);
  await getCctPost(req, postId);
  const result = await appwriteTableRowRequest(CCT_POST_COMMENTS_TABLE_ID, "GET", "", undefined, [
    { method: "equal", attribute: "post_id", values: [postId] },
    { method: "orderAsc", attribute: "$createdAt" },
    { method: "limit", values: [100] }
  ]);
  return (result.rows || []).map(row => {
    const data = row.data || row;
    return {
      id: row.$id || row.id,
      postId,
      authorName: normalizeString(data.author_name || data.user_id),
      content: normalizeString(data.content),
      createdAtUtc: safeIsoDate(row.$createdAt || data.created_at)
    };
  });
}

async function createCctPostComment(req, log, postId) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  await getCctPost(req, postId);
  const body = getRequestBody(req);
  const content = normalizeString(body.content);
  if (!content) throw announcementError("Comment content is required.", 400);
  if (content.length > 2000) throw announcementError("Comment is too long.", 400);
  const document = await appwriteTableRowRequest(CCT_POST_COMMENTS_TABLE_ID, "POST", "", {
    rowId: randomUUID().replace(/-/g, ""),
    data: {
      post_id: postId,
      user_id: firebaseUser.uid,
      author_name: normalizeString(firebaseUser.name || firebaseUser.email || firebaseUser.uid),
      content
    }
  });
  const data = document.data || document;
  return {
    id: document.$id || document.id,
    postId,
    authorName: normalizeString(data.author_name || firebaseUser.uid),
    content: normalizeString(data.content),
    createdAtUtc: safeIsoDate(document.$createdAt || data.created_at)
  };
}

async function createCctPost(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);
  const content = normalizeString(body.content);
  const postType = normalizeString(body.postType);
  if (!content) throw announcementError("Post content is required.", 400);
  if (!postType) throw announcementError("Post type is required.", 400);
  if (content.length > 5000) throw announcementError("Post content is too long.", 400);

  const document = await appwriteTableRowRequest(
    CCT_POSTS_COLLECTION_ID,
    "POST",
    "",
    {
      rowId: randomUUID().replace(/-/g, ""),
      data: {
        user_id: firebaseUser.uid,
        content,
        post_type: postType,
        media_type: "none",
        media_url: null,
        sia_object_id: null,
        media_size: null,
        status: "published",
        is_published: true
      }
    }
  );
  const post = mapCctPostDocument(document);
  if (["official", "announcement", "notice", "update"].includes(postType.toLowerCase())) {
    await notifyHomeUpdate(post, log);
  }
  return post;
}

async function notifyHomeUpdate(post, log) {
  try {
    const tokenPage = await appwriteTableRowRequest(
      CHURCH_DEVICE_TOKENS_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [{ method: "limit", values: [500] }]
    );
    const tokens = (tokenPage.rows || tokenPage.documents || [])
      .map(token => normalizeString(token.token))
      .filter(Boolean);
    if (!tokens.length) return;
    const preview = normalizeString(post.content).slice(0, 120);
    const result = await firebaseMessaging.sendEachForMulticast({
      tokens,
      notification: { title: "CCT-USCF • Official Update", body: preview },
      data: {
        notification_type: "home_update",
        event_id: normalizeString(post.id),
        content_id: normalizeString(post.id),
        post_id: normalizeString(post.id),
        route: "post",
        target_id: normalizeString(post.id)
      }
    });
    log(`[CCT_HOME_FCM] success=${result.successCount} failed=${result.failureCount}`);
  } catch (error) {
    log(`[CCT_HOME_FCM] failed=${error instanceof Error ? error.message : String(error)}`);
  }
}

async function submitSupportRequest(req, log) {
  const firebaseUser = await verifyFirebaseRequest(req, log);
  const body = getRequestBody(req);

  const category = normalizeString(body.category || body.type || "");
  const subject = normalizeString(body.subject || "");
  const message = normalizeString(body.message || "");

  if (!category) {
    throw announcementError("Please choose a support category.", 400);
  }

  if (!subject) {
    throw announcementError("Please add a subject.", 400);
  }

  if (!message) {
    throw announcementError("Please add a message.", 400);
  }

  const userId = normalizeString(body.userId || body.user_id || firebaseUser.uid || "");
  const userEmail = normalizeString(body.userEmail || body.user_email || firebaseUser.email || "");
  const userName = normalizeString(body.userName || body.user_name || firebaseUser.name || firebaseUser.email || "");
  const appVersion = normalizeString(body.appVersion || body.app_version || "");
  const platform = normalizeString(body.platform || "Android");
  const now = new Date().toISOString();
  const documentId = randomUUID();

  const document = await appwriteCollectionRequest(
    SUPPORT_REQUESTS_COLLECTION_ID,
    "POST",
    "",
    {
      documentId,
      data: {
        user_id: userId || firebaseUser.uid,
        user_email: userEmail || firebaseUser.email || "",
        user_name: userName,
        category: category.slice(0, 64),
        subject: subject.slice(0, 255),
        message: message.slice(0, 5000),
        status: "new",
        app_version: appVersion.slice(0, 128),
        platform: platform.slice(0, 32),
        created_at: now,
        updated_at: now
      }
    }
  );

  log(`[CCT_SUPPORT_REQUEST] uid=${firebaseUser.uid} category=${category} subject=${subject}`);

  return {
    success: true,
    id: document.$id || document.id || documentId,
    status: "new"
  };
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
        await ensureAboutCollections();
        await ensureAboutAuthorityCollection();
      }

      if (route === "/api/about/history" || route === "api/about/history") {
        if (req.method === "GET") {
          currentStage = "GET about history";
          return jsonResponse(res, await listAboutPublishedCollection(req, log, ABOUT_HISTORY_COLLECTION_ID, "history"), 200);
        }
        if (req.method === "POST") {
          currentStage = "POST about history";
          return jsonResponse(res, await saveAboutContent(req, log, ABOUT_HISTORY_COLLECTION_ID, "history"), 200);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/about/mission-vision" || route === "api/about/mission-vision") {
        if (req.method === "GET") {
          currentStage = "GET about mission vision";
          return jsonResponse(res, await listAboutPublishedCollection(req, log, ABOUT_MISSION_VISION_COLLECTION_ID, "missionVision"), 200);
        }
        if (req.method === "POST") {
          currentStage = "POST about mission vision";
          return jsonResponse(res, await saveAboutContent(req, log, ABOUT_MISSION_VISION_COLLECTION_ID, "missionVision"), 200);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/about/leadership" || route === "api/about/leadership") {
        if (req.method === "GET") {
          currentStage = "GET about leadership";
          return jsonResponse(res, await listAboutPublishedCollection(req, log, ABOUT_LEADERSHIP_COLLECTION_ID, "leadership"), 200);
        }
        if (req.method === "POST") {
          currentStage = "POST about leadership";
          return jsonResponse(res, await saveAboutContent(req, log, ABOUT_LEADERSHIP_COLLECTION_ID, "leadership"), 200);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/about/documents" || route === "api/about/documents") {
        if (req.method === "GET") {
          currentStage = "GET about documents";
          return jsonResponse(res, await listAboutPublishedCollection(req, log, ABOUT_DOCUMENTS_COLLECTION_ID, "documents"), 200);
        }
        if (req.method === "POST" || req.method === "PATCH" || req.method === "PUT" || req.method === "DELETE") {
          currentStage = `${req.method} about documents`;
          throw rejectPrivilegedAboutWrite(log, `about documents ${req.method.toLowerCase()}`);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/about/official-information" || route === "api/about/official-information" || route === "/api/about/contact" || route === "api/about/contact") {
        if (req.method === "GET") {
          currentStage = "GET about official information";
          return jsonResponse(res, await listAboutPublishedCollection(req, log, ABOUT_OFFICIAL_INFORMATION_COLLECTION_ID, "officialInformation"), 200);
        }
        if (req.method === "POST" || req.method === "PATCH" || req.method === "PUT" || req.method === "DELETE") {
          currentStage = `${req.method} about official information`;
          throw rejectPrivilegedAboutWrite(log, `about official information ${req.method.toLowerCase()}`);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/about/authority/bootstrap" || route === "api/about/authority/bootstrap") {
        if (req.method !== "POST") {
          throw announcementError("Method not allowed.", 405);
        }
        currentStage = "POST about authority bootstrap";
        return jsonResponse(res, await bootstrapAboutAuthority(req, log), 200);
      }

      if (route === "/api/about/authority" || route === "api/about/authority") {
        if (req.method === "GET") {
          currentStage = "GET about authority";
          const firebaseUser = await verifyFirebaseRequest(req, log);
          const records = await getAboutAuthorityForUser(firebaseUser.uid);
          return jsonResponse(res, { success: true, records, count: records.length }, 200);
        }
        if (req.method === "POST") {
          currentStage = "POST about authority";
          return jsonResponse(res, await createAboutAuthorityRecord(req, log), 201);
        }
        throw announcementError("Method not allowed.", 405);
      }

      const authorityIdMatch = route.match(/^\/?api\/about\/authority\/([^/]+)$/);
      if (authorityIdMatch) {
        const authorityId = decodeURIComponent(authorityIdMatch[1]);
        if (req.method === "PATCH") {
          currentStage = "PATCH about authority";
          return jsonResponse(res, await updateAboutAuthorityRecord(req, log, authorityId), 200);
        }
        if (req.method === "DELETE") {
          currentStage = "DELETE about authority";
          return jsonResponse(res, await deleteAboutAuthorityRecord(req, log, authorityId), 200);
        }
        throw announcementError("Method not allowed.", 405);
      }

      if (route === "/api/church-announcements/options" ||
        route === "api/church-announcements/options") {
      if (req.method !== "GET") throw announcementError("Method not allowed.", 405);
      currentStage = "GET church announcement options";
      return jsonResponse(res, await getAnnouncementOptions(req, log), 200);
    }

    if (route === "/api/prayers" || route === "api/prayers") {
      if (req.method === "GET") {
        currentStage = "GET prayer requests";
        return jsonResponse(res, await listPrayerRequests(req, log), 200);
      }
      if (req.method === "POST") {
        currentStage = "POST prayer request";
        return jsonResponse(res, await createPrayerRequest(req, log), 201);
      }
      throw announcementError("Method not allowed.", 405);
    }

    const prayerActionMatch = route.match(
      /^\/?api\/prayers\/([^/]+)\/(pray|actions)$/
    );
    if (prayerActionMatch) {
      const prayerId = decodeURIComponent(prayerActionMatch[1]);
      if (prayerActionMatch[2] === "pray") {
        if (req.method !== "POST") throw announcementError("Method not allowed.", 405);
        currentStage = "POST prayer action";
        return jsonResponse(res, await recordPrayerAction(req, log, prayerId), 200);
      }
      if (req.method !== "GET") throw announcementError("Method not allowed.", 405);
      currentStage = "GET prayer action summary";
      return jsonResponse(res, await getPrayerActionSummary(req, log, prayerId), 200);
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

    if (route === "/api/community/posts" ||
        route === "api/community/posts") {
      if (req.method === "GET") {
        currentStage = "GET CCT posts";
        return jsonResponse(res, await listCctPosts(req, log), 200);
      }
      if (req.method === "POST") {
        currentStage = "POST CCT post";
        return jsonResponse(res, await createCctPost(req, log), 201);
      }
      throw announcementError("Method not allowed.", 405);
    }

    const postLikeMatch = route.match(/^\/?api\/community\/posts\/([^/]+)\/like$/);
    if (postLikeMatch) {
      const postId = decodeURIComponent(postLikeMatch[1]);
      if (req.method === "POST" || req.method === "DELETE") {
        currentStage = `${req.method} CCT post like`;
        return jsonResponse(
          res,
          await toggleCctPostLike(req, log, postId, req.method === "DELETE"),
          200
        );
      }
      throw announcementError("Method not allowed.", 405);
    }

    const postCommentsMatch = route.match(/^\/?api\/community\/posts\/([^/]+)\/comments$/);
    if (postCommentsMatch) {
      const postId = decodeURIComponent(postCommentsMatch[1]);
      if (req.method === "GET") {
        currentStage = "GET CCT post comments";
        return jsonResponse(res, await listCctPostComments(req, log, postId), 200);
      }
      if (req.method === "POST") {
        currentStage = "POST CCT post comment";
        return jsonResponse(res, await createCctPostComment(req, log, postId), 201);
      }
      throw announcementError("Method not allowed.", 405);
    }

    if (route === "/api/support/feedback" || route === "api/support/feedback") {
      if (req.method !== "POST") throw announcementError("Method not allowed.", 405);
      currentStage = "POST support request";
      return jsonResponse(res, await submitSupportRequest(req, log), 201);
    }
    /*
     * ========================================================
     * COMMUNITY GROUP REGISTRY ROUTE
     * ========================================================
     */

    if (
      route === "/api/community/groups" ||
      route === "api/community/groups"
    ) {
      if (req.method === "GET") {
        currentStage = "GET community groups";
        return jsonResponse(res, await listChurchGroups(req, log), 200);
      }
      if (req.method === "POST") {
        currentStage = "POST community group";
        return jsonResponse(res, await createChurchGroup(req, log), 201);
      }
      return jsonResponse(res, { success: false, error: "Method not allowed." }, 405);
    }

    const groupMutation = route.match(/^\/?api\/community\/groups\/([^/]+)$/);
    if (groupMutation) {
      if (req.method === "POST") {
        currentStage = "POST join community group";
        return jsonResponse(
          res,
          await joinChurchGroup(req, log, decodeURIComponent(groupMutation[1])),
          200
        );
      }
      if (req.method !== "DELETE") {
        return jsonResponse(res, { success: false, error: "Method not allowed." }, 405);
      }
      currentStage = "DELETE community group";
      return jsonResponse(
        res,
        await deleteChurchGroup(req, log, decodeURIComponent(groupMutation[1])),
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

    const groupMessageMutation = route.match(
      /^\/?api\/community\/messages\/group\/([^/]+)$/
    );
    if (groupMessageMutation) {
      const messageId = decodeURIComponent(groupMessageMutation[1]);
      if (req.method === "PATCH" || req.method === "PUT") {
        currentStage = "PATCH group message";
        return jsonResponse(
          res,
          await updateGroupMessage(req, log, messageId, false),
          200
        );
      }
      if (req.method === "DELETE") {
        currentStage = "DELETE group message";
        return jsonResponse(
          res,
          await updateGroupMessage(req, log, messageId, true),
          200
        );
      }
      return jsonResponse(res, { error: "Method not allowed." }, 405);
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
