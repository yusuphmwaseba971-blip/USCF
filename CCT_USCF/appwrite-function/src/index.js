import { randomUUID } from 'node:crypto';
import { cert, initializeApp, getApps } from 'firebase-admin/app';
import { getAuth } from 'firebase-admin/auth';
import { Client, Databases, Query } from 'node-appwrite';

function createFirebaseApp() {
  if (getApps().length > 0) {
    return getApps()[0];
  }

  const serviceAccountJson = process.env.FIREBASE_SERVICE_ACCOUNT_JSON;
  if (serviceAccountJson) {
    return initializeApp({
      credential: cert(JSON.parse(serviceAccountJson))
    });
  }

  const projectId = process.env.FIREBASE_PROJECT_ID;
  const clientEmail = process.env.FIREBASE_CLIENT_EMAIL;
  const privateKey = process.env.FIREBASE_PRIVATE_KEY;

  if (projectId && clientEmail && privateKey) {
    return initializeApp({
      credential: cert({
        projectId,
        clientEmail,
        privateKey: privateKey.replace(/\\n/g, '\n')
      })
    });
  }

  return initializeApp();
}

const firebaseApp = createFirebaseApp();
const auth = getAuth(firebaseApp);

const appwriteClient = new Client()
  .setEndpoint(process.env.APPWRITE_ENDPOINT || 'https://sgp.cloud.appwrite.io/v1')
  .setProject(process.env.APPWRITE_PROJECT_ID)
  .setKey(process.env.APPWRITE_API_KEY);

const databases = new Databases(appwriteClient);

function readHeader(headers, name) {
  if (!headers) {
    return '';
  }

  const direct = headers[name];
  if (typeof direct === 'string' && direct.trim()) {
    return direct.trim();
  }

  const lowerKey = name.toLowerCase();
  for (const [key, value] of Object.entries(headers)) {
    if (key && key.toLowerCase() === lowerKey && typeof value === 'string' && value.trim()) {
      return value.trim();
    }
  }

  return '';
}

function normalizeString(value) {
  if (value === undefined || value === null) {
    return '';
  }

  return String(value).trim();
}

function parseOptionalInt(value) {
  if (value === undefined || value === null || value === '') {
    return null;
  }

  const parsed = Number(value);
  return Number.isFinite(parsed) && parsed > 0 ? parsed : null;
}

function isAllowedMessageType(type) {
  const normalized = normalizeString(type).toLowerCase();
  return ['text', 'image', 'video', 'audio'].includes(normalized);
}

function safeIsoDate(value, fallback) {
  const candidate = value ?? fallback;
  const date = candidate ? new Date(candidate) : new Date();

  if (Number.isNaN(date.getTime())) {
    return new Date().toISOString();
  }

  return date.toISOString();
}

function toNumber(value, fallback = 0) {
  const parsed = Number(value ?? fallback);
  return Number.isFinite(parsed) ? parsed : fallback;
}

function mapMessageDocument(document) {
  const raw = document && document.data ? document.data : (document || {});
  const id = normalizeString(raw.id ?? document?.$id ?? raw.message_id ?? raw.messageId ?? '');
  const messageId = normalizeString(raw.message_id ?? raw.messageId ?? id);
  const clientMessageId = normalizeString(raw.client_message_id ?? raw.clientMessageId ?? messageId);
  const communityId = normalizeString(raw.community_id ?? raw.communityId ?? '');
  const organizationalLevel = normalizeString(raw.organizational_level ?? raw.organization_type ?? raw.organizationalLevel ?? 'Branch');

  return {
    id: id || document?.$id || messageId,
    messageId: messageId || document?.$id || clientMessageId,
    clientMessageId: clientMessageId || messageId || document?.$id || '',
    senderUid: normalizeString(raw.sender_uid ?? raw.senderUid ?? ''),
    senderName: normalizeString(raw.sender_name ?? raw.senderName ?? 'Community member'),
    content: normalizeString(raw.content ?? ''),
    communityId,
    branchId: raw.branch_id ?? raw.branchId ?? null,
    regionId: raw.region_id ?? raw.regionId ?? null,
    districtId: raw.district_id ?? raw.districtId ?? null,
    organizationalLevel,
    messageType: normalizeString(raw.message_type ?? raw.messageType ?? 'text'),
    mediaUrl: normalizeString(raw.media_url ?? raw.mediaUrl ?? ''),
    thumbnailUrl: normalizeString(raw.thumbnail_url ?? raw.thumbnailUrl ?? ''),
    fileName: normalizeString(raw.file_name ?? raw.fileName ?? ''),
    fileSize: toNumber(raw.file_size ?? raw.fileSize ?? 0),
    duration: toNumber(raw.duration ?? 0),
    createdAt: safeIsoDate(raw.created_at ?? raw.createdAt ?? document?.$createdAt, new Date().toISOString()),
    updatedAt: safeIsoDate(raw.updated_at ?? raw.updatedAt ?? document?.$updatedAt ?? raw.created_at ?? document?.$createdAt, new Date().toISOString()),
    appwriteTeamId: normalizeString(raw.appwrite_team_id ?? raw.appwriteTeamId ?? '')
  };
}

function buildCreateResponse(message) {
  return {
    message,
    data: message,
    id: message.id,
    messageId: message.messageId,
    clientMessageId: message.clientMessageId,
    success: true
  };
}

function buildListResponse(items) {
  return {
    messages: items,
    data: items,
    items,
    results: items,
    count: items.length,
    success: true
  };
}

async function verifyFirebaseRequest(req) {
  const authHeader = readHeader(req.headers, 'Authorization');
  if (!authHeader.startsWith('Bearer ')) {
    throw Object.assign(new Error('Authorization header is required.'), { statusCode: 401 });
  }

  const token = authHeader.replace(/^Bearer\s+/i, '').trim();
  if (!token) {
    throw Object.assign(new Error('Firebase token is missing.'), { statusCode: 401 });
  }

  const decoded = await auth.verifyIdToken(token);
  return decoded;
}

async function listGroupMessages(req) {
  await verifyFirebaseRequest(req);

  const query = req.query || {};
  const payload = typeof req.body === 'object' && req.body ? req.body : {};
  const communityId = normalizeString(query.communityId ?? query.community_id ?? payload.communityId ?? payload.community_id ?? '');

  if (!communityId) {
    throw Object.assign(new Error('communityId is required.'), { statusCode: 400 });
  }

  const organizationalLevel = normalizeString(query.organizationalLevel ?? query.organizational_level ?? payload.organizationalLevel ?? payload.organizational_level ?? 'Branch');
  const branchId = parseOptionalInt(query.branchId ?? query.branch_id ?? payload.branchId ?? payload.branch_id);
  const regionId = parseOptionalInt(query.regionId ?? query.region_id ?? payload.regionId ?? payload.region_id);
  const districtId = parseOptionalInt(query.districtId ?? query.district_id ?? payload.districtId ?? payload.district_id);
  const limit = Math.max(1, Math.min(100, parseInt(query.limit ?? payload.limit ?? '100', 10) || 100));

  const databaseId = process.env.APPWRITE_DATABASE_ID || 'cct-uscf-db';
  const collectionId = process.env.APPWRITE_MESSAGES_COLLECTION_ID || 'community_messages';

  const queries = [
    Query.equal('community_id', [communityId]),
    Query.limit(limit),
    Query.orderDesc('$createdAt')
  ];

  if (organizationalLevel) {
    queries.push(Query.equal('organization_type', [organizationalLevel]));
  }

  if (branchId) {
    queries.push(Query.equal('branch_id', [String(branchId)]));
  }

  if (regionId) {
    queries.push(Query.equal('region_id', [String(regionId)]));
  }

  if (districtId) {
    queries.push(Query.equal('district_id', [String(districtId)]));
  }

  const response = await databases.listDocuments(databaseId, collectionId, queries);
  const items = (response.documents || []).map(mapMessageDocument);
  return buildListResponse(items);
}

async function createGroupMessage(req) {
  const payload = typeof req.body === 'string' ? JSON.parse(req.body || '{}') : (req.body || {});
  const body = payload && typeof payload === 'object' ? payload : {};

  const communityId = normalizeString(body.communityId ?? body.community_id ?? '');
  if (!communityId) {
    throw Object.assign(new Error('communityId is required.'), { statusCode: 400 });
  }

  const messageType = normalizeString(body.messageType ?? body.message_type ?? 'text').toLowerCase() || 'text';
  if (!isAllowedMessageType(messageType)) {
    throw Object.assign(new Error('Unsupported community message type.'), { statusCode: 400 });
  }

  const content = normalizeString(body.content ?? '');
  if (messageType === 'text' && !content) {
    throw Object.assign(new Error('Message content is required.'), { statusCode: 400 });
  }

  const mediaUrl = normalizeString(body.mediaUrl ?? body.media_url ?? '');
  if (messageType !== 'text' && !mediaUrl) {
    throw Object.assign(new Error('Media URL is required for media messages.'), { statusCode: 400 });
  }

  const firebaseUser = await verifyFirebaseRequest(req);
  const firebaseUid = normalizeString(firebaseUser.uid);

  if (!firebaseUid) {
    throw Object.assign(new Error('Firebase UID is missing.'), { statusCode: 401 });
  }

  const clientMessageId = normalizeString(body.clientMessageId ?? body.client_message_id ?? '');
  const messageId = clientMessageId || randomUUID().replace(/-/g, '');
  const now = new Date();
  const createdAt = now.toISOString();
  const databaseId = process.env.APPWRITE_DATABASE_ID || 'cct-uscf-db';
  const collectionId = process.env.APPWRITE_MESSAGES_COLLECTION_ID || 'community_messages';
  const senderName = normalizeString(body.senderName ?? firebaseUser.name ?? 'Community member') || 'Community member';
  const branchId = parseOptionalInt(body.branchId ?? body.branch_id);
  const regionId = parseOptionalInt(body.regionId ?? body.region_id);
  const districtId = parseOptionalInt(body.districtId ?? body.district_id);

  const document = await databases.createDocument(
    databaseId,
    collectionId,
    messageId,
    {
      message_id: messageId,
      client_message_id: clientMessageId || messageId,
      sender_uid: firebaseUid,
      sender_name: senderName,
      content,
      community_id: communityId,
      branch_id: branchId !== null ? String(branchId) : null,
      region_id: regionId !== null ? String(regionId) : null,
      district_id: districtId !== null ? String(districtId) : null,
      organization_type: normalizeString(body.organizationalLevel ?? body.organizational_level ?? 'Branch') || 'Branch',
      message_type: messageType,
      media_url: mediaUrl,
      thumbnail_url: normalizeString(body.thumbnailUrl ?? body.thumbnail_url ?? ''),
      file_name: normalizeString(body.fileName ?? body.file_name ?? ''),
      file_size: toNumber(body.fileSize ?? body.file_size ?? 0),
      duration: toNumber(body.duration ?? 0),
      created_at: createdAt,
      updated_at: createdAt,
      appwrite_team_id: normalizeString(body.appwriteTeamId ?? body.appwrite_team_id ?? '')
    },
    undefined
  );

  const message = mapMessageDocument(document);
  return buildCreateResponse(message);
}

export default async ({ req, res, log, error }) => {
  try {
    if (!process.env.APPWRITE_PROJECT_ID || !process.env.APPWRITE_API_KEY) {
      throw Object.assign(new Error('Appwrite function is missing required environment variables.'), { statusCode: 500 });
    }

  const url = new URL(req.url || 'https://example.invalid/');
const route = (url.pathname || req.path || '/')
  .split('?')[0]
  .replace(/\/+$/, '');

 log(`CCT community route: ${route}`);
log(`CCT request method: ${req.method}`);
log(`CCT request URL: ${req.url || ''}`);
log(`CCT request path: ${req.path || ''}`);

    if (route === '/api/community/messages/group' || route === 'api/community/messages/group') {
      if (req.method === 'GET') {
        const result = await listGroupMessages(req);
        return res.json(result);
      }

      if (req.method === 'POST') {
        const result = await createGroupMessage(req);
        return res.json(result);
      }
    }

    return res.json({
      success: true,
      service: 'CCT Appwrite API',
      status: 'online',
      route
    });
  } catch (e) {
    error(e);
    const statusCode = Number.isInteger(e?.statusCode) ? e.statusCode : 500;
    return res.json(
      {
        success: false,
        error: e?.message || 'Internal server error'
      },
      statusCode
    );
  }
};
