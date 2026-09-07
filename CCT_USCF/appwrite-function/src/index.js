import { randomUUID } from "node:crypto";
import { cert, getApps, initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";

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

const COMMUNITY_MESSAGES_COLLECTION_ID =
  process.env.APPWRITE_COMMUNITY_MESSAGES_COLLECTION_ID ||
  "community_messages";


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

  const match =
    authorization.match(
      /^Bearer[ \t]+(.+)$/i
    );

  if (!match) {
    log("[CCT_FIREBASE_AUTH] Authorization scheme = invalid");
    const error = new Error(
      "Invalid Authorization header."
    );
    error.statusCode = 401;
    throw error;
  }

  const idToken =
    match[1].trim();

  if (!idToken) {
    log("[CCT_FIREBASE_AUTH] Authorization scheme = Bearer, token present: NO");
    const error = new Error(
      "Missing Firebase ID token."
    );
    error.statusCode = 401;
    throw error;
  }

  log("[CCT_FIREBASE_AUTH] Authorization scheme = Bearer");
  log("[CCT_FIREBASE_AUTH] Firebase token present: YES");
  log(
    "[CCT_FIREBASE_AUTH] Authorization header found: YES"
  );

  log(
    "[CCT_FIREBASE_AUTH] Authorization scheme = Bearer"
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
          "Internal server error."
      },
      statusCode
    );
  }
};
