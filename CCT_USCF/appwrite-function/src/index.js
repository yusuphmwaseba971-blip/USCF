import { randomUUID } from "node:crypto";
import { cert, getApps, initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { Client, Databases, Query } from "node-appwrite";

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

/* ------------------------------------------------------------
 * Firebase initialization
 * ------------------------------------------------------------ */

function createFirebaseApp() {
  const existingApps = getApps();

  if (existingApps.length > 0) {
    return existingApps[0];
  }

  const serviceAccountJson =
    process.env.FIREBASE_SERVICE_ACCOUNT_JSON;

  if (serviceAccountJson) {
    const serviceAccount =
      JSON.parse(serviceAccountJson);

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

  if (!projectId || !clientEmail || !privateKey) {
    throw new Error(
      "Firebase Admin configuration is incomplete."
    );
  }

  return initializeApp({
    credential: cert({
      projectId,
      clientEmail,
      privateKey: privateKey
        .replace(/\\n/g, "\n")
        .replace(/\r\n/g, "\n")
        .trim()
    })
  });
}

const firebaseApp =
  createFirebaseApp();

const auth =
  getAuth(firebaseApp);

/* ------------------------------------------------------------
 * Appwrite initialization
 * ------------------------------------------------------------ */

const appwriteEndpoint =
  (
    process.env.APPWRITE_ENDPOINT ||
    "https://sgp.cloud.appwrite.io/v1"
  ).replace(/\/+$/, "");

const appwriteProjectId =
  process.env.APPWRITE_PROJECT_ID ||
  "project-sgp-cct-uscf";

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

const appwriteClient =
  new Client()
    .setEndpoint(appwriteEndpoint)
    .setProject(appwriteProjectId)
    .setKey(appwriteApiKey);

const databases =
  new Databases(appwriteClient);

/* ------------------------------------------------------------
 * Constants
 * ------------------------------------------------------------ */

const DEFAULT_DATABASE_ID = "database-cct-uscf-db";

const COMMUNITY_MESSAGES_COLLECTION_ID = "community_messages";

/* ------------------------------------------------------------
 * Diagnostic helpers
 * ------------------------------------------------------------ */

/*
 * Safely convert an unknown error/cause into diagnostic text.
 *
 * IMPORTANT:
 * Never log request headers, Firebase tokens,
 * Appwrite API keys, private keys, passwords,
 * or other credentials.
 */
function getErrorDetails(error) {
  if (error === null || error === undefined) {
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
      if (
        error.cause instanceof Error
      ) {
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
        typeof error.cause === "object"
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
    name:
      "UnknownError",

    message:
      String(error),

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
    if (
      typeof details.cause === "object"
    ) {
      log(
        `[CCT_ERROR] CAUSE_NAME=${details.cause.name || ""}`
      );

      log(
        `[CCT_ERROR] CAUSE_MESSAGE=${details.cause.message || ""}`
      );

      if (details.cause.stack) {
        log(
          `[CCT_ERROR] CAUSE_STACK=${details.cause.stack}`
        );
      }
    } else {
      log(
        `[CCT_ERROR] CAUSE=${details.cause}`
      );
    }
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

/* ------------------------------------------------------------
 * Utility helpers
 * ------------------------------------------------------------ */

function readHeader(req, name) {
  const headers =
    req.headers || {};

  const direct =
    headers[name] ??
    headers[name.toLowerCase()] ??
    headers[name.toUpperCase()];

  if (direct) {
    return direct;
  }

  const authorization =
    headers.authorization ||
    headers.Authorization;

  if (
    name.toLowerCase() ===
      "authorization" &&
    authorization
  ) {
    return authorization;
  }

  return "";
}

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

/* ------------------------------------------------------------
 * Appwrite document → API message
 * ------------------------------------------------------------ */

function mapMessageDocument(document) {
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

/* ------------------------------------------------------------
 * Response builders
 * ------------------------------------------------------------ */

function buildCreateResponse(message) {
  return {
    message,

    data:
      message,

    id:
      message.id,

    messageId:
      message.messageId,

    clientMessageId:
      message.clientMessageId,

    success:
      true
  };
}

function buildListResponse(items) {
  return {
    messages:
      items,

    data:
      items,

    items,

    results:
      items,

    count:
      items.length,

    success:
      true
  };
}

/* ------------------------------------------------------------
 * Firebase authentication
 * ------------------------------------------------------------ */

async function verifyFirebaseRequest(
  req,
  log
) {
  const authorization =
    readHeader(
      req,
      "authorization"
    );

  if (!authorization) {
    throw new Error(
      "Missing Authorization header."
    );
  }

  const match =
    authorization.match(
      /^Bearer\s+(.+)$/i
    );

  if (!match) {
    throw new Error(
      "Invalid Authorization header."
    );
  }

  const idToken =
    match[1].trim();

  if (!idToken) {
    throw new Error(
      "Missing Firebase ID token."
    );
  }

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
      throw new Error(
        "Firebase ID-token verification returned no UID."
      );
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

    throw error;
  }
}

/* ------------------------------------------------------------
 * Request body parsing
 * ------------------------------------------------------------ */

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

/* ------------------------------------------------------------
 * GET group messages
 * ------------------------------------------------------------ */

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
    `[CCT_MESSAGE_LIST] UID=${firebaseUser.uid} communityId=${communityId}`
  );

  const queries = [
    Query.equal(
      "community_id",
      [communityId]
    ),

    Query.limit(limit),

    Query.orderDesc(
      "$createdAt"
    )
  ];

  if (organizationalLevel) {
    queries.push(
      Query.equal(
        "organization_type",
        [organizationalLevel]
      )
    );
  }

  if (branchId !== null) {
    queries.push(
      Query.equal(
        "branch_id",
        [String(branchId)]
      )
    );
  }

  if (regionId !== null) {
    queries.push(
      Query.equal(
        "region_id",
        [String(regionId)]
      )
    );
  }

  if (districtId !== null) {
    queries.push(
      Query.equal(
        "district_id",
        [String(districtId)]
      )
    );
  }

  log(
    "[CCT_MESSAGE_LIST] Appwrite listDocuments START"
  );

  let result;

  try {
    result =
      await databases.listDocuments(
        DEFAULT_DATABASE_ID,
        COMMUNITY_MESSAGES_COLLECTION_ID,
        queries
      );

    log(
      `[CCT_MESSAGE_LIST] Appwrite listDocuments SUCCESS count=${result.documents?.length || 0}`
    );
  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Appwrite listDocuments"
    );

    throw error;
  }

  const items =
    (result.documents || [])
      .map(
        mapMessageDocument
      );

  return buildListResponse(
    items
  );
}

/* ------------------------------------------------------------
 * POST create group message
 * ------------------------------------------------------------ */

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
   * before creating the Appwrite message.
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
   * Firebase UID is authoritative.
   *
   * Never trust senderUid supplied
   * by the mobile application.
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
    `[CCT_MESSAGE_CREATE] Firebase UID=${senderUid}`
  );

  /*
   * IMPORTANT:
   *
   * Do not use senderUid from the request body.
   * Firebase verified UID is used instead.
   */

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

    updated_at:
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

  log(
    "[CCT_MESSAGE_CREATE] Direct Appwrite REST create START"
  );

  let document;

  try {
    const appwriteCreateUrl =
  `${appwriteEndpoint}/databases/${encodeURIComponent(DEFAULT_DATABASE_ID)}/collections/${encodeURIComponent(COMMUNITY_MESSAGES_COLLECTION_ID)}/documents`;

console.log("[CCT_MESSAGE_CREATE] Direct Appwrite REST URL=" + appwriteCreateUrl);
console.log("[CCT_MESSAGE_CREATE] Direct Appwrite REST create START");

const appwriteResponse = await fetch(appwriteCreateUrl, {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "X-Appwrite-Project": appwriteProjectId,
    "X-Appwrite-Key": appwriteApiKey
  },
  body: JSON.stringify({
    documentId: messageId,
    data: documentData
  })
});

const appwriteResponseText = await appwriteResponse.text();

console.log(
  "[CCT_MESSAGE_CREATE] Direct Appwrite REST status=" +
  appwriteResponse.status
);

if (!appwriteResponse.ok) {
  console.error(
    "[CCT_MESSAGE_CREATE] Direct Appwrite REST FAILED body=" +
    appwriteResponseText
  );

  throw new Error(
    `Appwrite create failed (${appwriteResponse.status}): ${appwriteResponseText}`
  );
}

try {
  document = JSON.parse(appwriteResponseText);
} catch {
  document = {
    $id: messageId,
    raw: appwriteResponseText
  };
}

console.log("[CCT_MESSAGE_CREATE] Direct Appwrite REST create SUCCESS");

    log(
      "[CCT_MESSAGE_CREATE] Direct Appwrite REST create SUCCESS"
    );

    log(
      `[CCT_MESSAGE_CREATE] Appwrite document ID=${document.$id || document.id || ""}`
    );
  } catch (error) {
    logErrorDetails(
      log,
      error,
      "Direct Appwrite REST create"
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

/* ------------------------------------------------------------
 * Main Appwrite Function
 * ------------------------------------------------------------ */

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

    const url =
      new URL(
        req.url ||
        "https://example.invalid/"
      );

    /*
     * IMPORTANT:
     *
     * Prefer URL pathname over req.path.
     *
     * In Appwrite, req.path may sometimes
     * resolve to "/" while the actual URL
     * contains the function route.
     */
    const route =
      (
        url.pathname ||
        req.path ||
        "/"
      )
        .split("?")[0]
        .replace(
          /\/+$/,
          ""
        );

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

    /*
     * --------------------------------------------------------
     * GET /api/community/messages/group
     * --------------------------------------------------------
     */

    if (
      route ===
        "/api/community/messages/group" ||
      route ===
        "api/community/messages/group"
    ) {
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

        return res.json(
          result
        );
      }

      /*
       * ------------------------------------------------------
       * POST /api/community/messages/group
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

        return res.json(
          result
        );
      }

      return res.json(
        {
          success:
            false,

          error:
            "Method not allowed."
        },
        405
      );
    }

    /*
     * --------------------------------------------------------
     * Health / default response
     * --------------------------------------------------------
     */

    return res.json({
      success:
        true,

      service:
        "CCT Appwrite API",

      status:
        "online",

      route
    });

  } catch (e) {
    /*
     * Full safe diagnostic information goes
     * to Appwrite logs.
     */
    logErrorDetails(
      log,
      e,
      currentStage
    );

    /*
     * Also preserve Appwrite's error logger.
     */
    try {
      error(e);
    } catch {
      // Do not allow diagnostic logging
      // itself to replace the original error.
    }

    const details =
      getErrorDetails(e);

    /*
     * Do not expose:
     * - Firebase tokens
     * - Appwrite API keys
     * - private keys
     * - passwords
     * - credentials
     * - stack traces to the mobile client
     *
     * Detailed diagnostics remain in
     * Appwrite execution logs.
     */
    return res.json(
      {
        success:
          false,

        error:
          details.message || "Internal server error."
      },
      500
    );
  }
};
