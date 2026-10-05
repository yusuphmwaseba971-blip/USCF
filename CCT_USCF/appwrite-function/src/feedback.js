import { randomUUID } from "node:crypto";

export const FEEDBACK_COLLECTION_ID = "app_feedback";
export const FEEDBACK_DATABASE_ID = "cct-uscf-db";

const FEEDBACK_TYPES = new Set(["Bug", "Suggestion", "General"]);
const FEEDBACK_CATEGORIES = new Set([
  "Home",
  "Bible",
  "Prayer",
  "Community",
  "Groups",
  "Profile",
  "Account/Login",
  "Other"
]);
const FEEDBACK_STATUSES = new Set(["New", "Reviewing", "Fixing", "Fixed", "Closed"]);
const PAGE_SIZE = 100;

function feedbackError(message, statusCode) {
  const error = new Error(message);
  error.statusCode = statusCode;
  return error;
}

function requestValue(req, name) {
  const value = req.query?.[name];
  if (value !== undefined && value !== null) {
    return Array.isArray(value) ? value[0] : value;
  }

  try {
    return new URL(req.url || req.path || "/", "https://appwrite.local")
      .searchParams.get(name);
  } catch {
    return null;
  }
}

function parsePage(req) {
  const offset = Number(requestValue(req, "offset") ?? 0);
  const limit = Number(requestValue(req, "limit") ?? 20);
  if (!Number.isSafeInteger(offset) || offset < 0 ||
      !Number.isSafeInteger(limit) || limit < 1 || limit > 50) {
    throw feedbackError("Feedback paging values are invalid.", 400);
  }
  return { offset, limit };
}

function decodeId(value) {
  try {
    const id = decodeURIComponent(value);
    if (!id || id.length > 36 || id.includes("/")) {
      throw new Error("invalid id");
    }
    return id;
  } catch {
    throw feedbackError("The feedback report could not be found.", 404);
  }
}

function requireAdmin(firebaseUser) {
  if (firebaseUser.feedbackAdmin !== true) {
    throw feedbackError("Your account is not permitted to access this feedback.", 403);
  }
}

function asString(value) {
  return typeof value === "string" ? value.trim() : "";
}

function getBody(req) {
  if (req.body && typeof req.body === "object") {
    return req.body;
  }
  if (typeof req.body === "string" && req.body.trim()) {
    try {
      return JSON.parse(req.body);
    } catch {
      throw feedbackError("Request body contains invalid JSON.", 400);
    }
  }
  return {};
}

function optionalString(value, maximumLength, fieldName) {
  const normalized = asString(value);
  if (normalized.length > maximumLength) {
    throw feedbackError(`${fieldName} is too long.`, 400);
  }
  return normalized || null;
}

function filterQuery(attribute, value) {
  return value && value.toLowerCase() !== "all"
    ? [{ method: "equal", attribute, values: [value] }]
    : [];
}

function createdAtValue(report) {
  const createdAt = Date.parse(report.$createdAt || "");
  return Number.isNaN(createdAt) ? 0 : createdAt;
}

async function findReport(request, id) {
  try {
    return await request(FEEDBACK_COLLECTION_ID, "GET", `/${encodeURIComponent(id)}`);
  } catch (error) {
    if (error?.statusCode === 404) {
      throw feedbackError("The feedback report could not be found.", 404);
    }
    throw error;
  }
}

async function listReports(request, queries = []) {
  const reports = [];
  let offset = 0;

  while (true) {
    const page = await request(
      FEEDBACK_COLLECTION_ID,
      "GET",
      "",
      undefined,
      [...queries, { method: "limit", values: [PAGE_SIZE] }, { method: "offset", values: [offset] }]
    );
    const documents = Array.isArray(page.documents) ? page.documents : [];
    reports.push(...documents);

    const total = Number.isSafeInteger(page.total) ? page.total : offset + documents.length;
    offset += documents.length;
    if (documents.length < PAGE_SIZE || offset >= total) {
      break;
    }
  }

  return reports.sort((left, right) => createdAtValue(right) - createdAtValue(left));
}

async function createFeedback({ req, firebaseUser, request }) {
  const body = getBody(req);
  const type = asString(body.type);
  const category = asString(body.category);
  const title = asString(body.title);
  const description = optionalString(body.description, 10000, "Description");
  const expectedResult = optionalString(body.expectedResult, 10000, "Expected result");
  const actualResult = optionalString(body.actualResult, 10000, "Actual result");
  const liked = optionalString(body.liked, 10000, "Liked");
  const improvement = optionalString(body.improvement, 10000, "Improvement");
  const appVersion = optionalString(body.appVersion, 128, "App version");
  const deviceModel = optionalString(body.deviceModel, 255, "Device model");
  const androidVersion = optionalString(body.androidVersion, 128, "Android version");

  if (!FEEDBACK_TYPES.has(type)) {
    throw feedbackError("Please choose a valid feedback type.", 400);
  }
  if (!FEEDBACK_CATEGORIES.has(category)) {
    throw feedbackError("Please choose a valid feedback category.", 400);
  }
  if (!title || title.length > 255) {
    throw feedbackError("Please add a title of 255 characters or fewer.", 400);
  }
  if (!description && !expectedResult && !actualResult && !liked && !improvement) {
    throw feedbackError("Please add a description for your feedback.", 400);
  }
  if (type === "Bug" && (!description || !expectedResult || !actualResult)) {
    throw feedbackError("Bug reports require a description, expected result, and actual result.", 400);
  }
  if (type === "Suggestion" && !description) {
    throw feedbackError("Please describe your suggestion.", 400);
  }

  if (body.screenshotBase64) {
    throw feedbackError(
      "Screenshot uploads are not available right now. Remove the screenshot and submit your report.",
      503
    );
  }

  const rating = body.rating == null ? null : Number(body.rating);
  if (rating !== null && (!Number.isInteger(rating) || rating < 1 || rating > 5)) {
    throw feedbackError("The feedback rating must be between 1 and 5.", 400);
  }
  if (type === "General" && rating === null && !liked && !improvement && !description) {
    throw feedbackError("Please add a rating or share feedback.", 400);
  }

  const documentId = randomUUID();
  const reference = `CCT-${randomUUID().replaceAll("-", "").slice(0, 28)}`;
  const data = {
    user_id: firebaseUser.uid,
    type,
    category,
    title,
    description,
    expected_result: expectedResult,
    actual_result: actualResult,
    rating,
    liked,
    improvement,
    screenshot_id: null,
    feedback_reference: reference,
    app_version: appVersion,
    device_model: deviceModel,
    android_version: androidVersion,
    status: "New"
  };

  const document = await request(FEEDBACK_COLLECTION_ID, "POST", "", {
    documentId,
    data
  });

  return {
    statusCode: 201,
    body: {
      success: true,
      id: document.$id || document.id || documentId,
      reference,
      screenshotId: null,
      createdAt: document.$createdAt || null
    }
  };
}

async function getMyReports({ req, firebaseUser, request }) {
  const { offset, limit } = parsePage(req);
  const reports = await listReports(request, [
    { method: "equal", attribute: "user_id", values: [firebaseUser.uid] }
  ]);
  return {
    statusCode: 200,
    body: {
      success: true,
      reports: reports.slice(offset, offset + limit),
      total: reports.length,
      limit,
      offset
    }
  };
}

async function getMyReport({ firebaseUser, request, id }) {
  const report = await findReport(request, id);
  if (report.user_id !== firebaseUser.uid) {
    throw feedbackError("The feedback report could not be found.", 404);
  }
  return { statusCode: 200, body: report };
}

async function getAdminSummary({ request }) {
  const reports = await listReports(request);
  const statuses = {};
  const types = {};
  for (const report of reports) {
    statuses[report.status] = (statuses[report.status] || 0) + 1;
    types[report.type] = (types[report.type] || 0) + 1;
  }
  return { statusCode: 200, body: { success: true, total: reports.length, statuses, types } };
}

async function getAdminReports({ req, request }) {
  const { offset, limit } = parsePage(req);
  const status = asString(requestValue(req, "status"));
  const type = asString(requestValue(req, "type"));
  const category = asString(requestValue(req, "category"));
  const search = asString(requestValue(req, "search")).toLowerCase();
  const queries = [
    ...filterQuery("status", status),
    ...filterQuery("type", type),
    ...filterQuery("category", category)
  ];
  let reports = await listReports(request, queries);

  if (search) {
    reports = reports.filter(report =>
      [report.feedback_reference, report.user_id, report.type, report.category, report.title, report.description]
        .some(value => asString(value).toLowerCase().includes(search))
    );
  }

  return {
    statusCode: 200,
    body: {
      success: true,
      reports: reports.slice(offset, offset + limit),
      total: reports.length,
      limit,
      offset
    }
  };
}

async function updateFeedbackStatus({ req, request, id }) {
  const body = getBody(req);
  const status = asString(body.status);
  if (!FEEDBACK_STATUSES.has(status)) {
    throw feedbackError("Please choose a valid feedback status.", 400);
  }

  const report = await findReport(request, id);
  const updated = await request(FEEDBACK_COLLECTION_ID, "PATCH", `/${encodeURIComponent(id)}`, {
    data: { status }
  });
  return { statusCode: 200, body: { success: true, report: updated || { ...report, status } } };
}

async function screenshotUnavailable({ request, firebaseUser, id, admin }) {
  const report = await findReport(request, id);
  if (!admin && report.user_id !== firebaseUser.uid) {
    throw feedbackError("The feedback report could not be found.", 404);
  }
  if (!report.screenshot_id) {
    throw feedbackError("This feedback report has no screenshot.", 404);
  }
  throw feedbackError("Feedback screenshots are not available right now.", 503);
}

export async function handleFeedbackRequest({
  req,
  route,
  log,
  verifyFirebaseRequest,
  request
}) {
  const normalizedRoute = route.startsWith("/") ? route : `/${route}`;
  if (normalizedRoute === "/api/support/feedback") {
    throw feedbackError("This support route is no longer supported. Use /api/feedback.", 410);
  }
  const isFeedbackRoute = normalizedRoute === "/api/feedback" ||
    normalizedRoute.startsWith("/api/feedback/");
  if (!isFeedbackRoute) {
    return null;
  }

  const firebaseUser = await verifyFirebaseRequest(req, log);

  if (normalizedRoute === "/api/feedback") {
    if (req.method !== "POST") {
      throw feedbackError("Method not allowed.", 405);
    }
    return createFeedback({ req, firebaseUser, request });
  }

  if (normalizedRoute === "/api/feedback/mine") {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    return getMyReports({ req, firebaseUser, request });
  }

  const myReportMatch = normalizedRoute.match(/^\/api\/feedback\/mine\/([^/]+)$/);
  if (myReportMatch) {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    return getMyReport({ firebaseUser, request, id: decodeId(myReportMatch[1]) });
  }

  if (normalizedRoute === "/api/feedback/admin/access") {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    return {
      statusCode: 200,
      body: { success: true, isAdmin: firebaseUser.feedbackAdmin === true }
    };
  }

  if (normalizedRoute === "/api/feedback/admin/summary") {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    requireAdmin(firebaseUser);
    return getAdminSummary({ request });
  }

  if (normalizedRoute === "/api/feedback/admin/reports") {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    requireAdmin(firebaseUser);
    return getAdminReports({ req, request });
  }

  const adminStatusMatch = normalizedRoute.match(/^\/api\/feedback\/admin\/reports\/([^/]+)\/status$/);
  if (adminStatusMatch) {
    if (req.method !== "PATCH") {
      throw feedbackError("Method not allowed.", 405);
    }
    requireAdmin(firebaseUser);
    return updateFeedbackStatus({ req, request, id: decodeId(adminStatusMatch[1]) });
  }

  const adminScreenshotMatch = normalizedRoute.match(/^\/api\/feedback\/admin\/reports\/([^/]+)\/screenshot$/);
  if (adminScreenshotMatch) {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    requireAdmin(firebaseUser);
    return screenshotUnavailable({
      request,
      firebaseUser,
      id: decodeId(adminScreenshotMatch[1]),
      admin: true
    });
  }

  const screenshotMatch = normalizedRoute.match(/^\/api\/feedback\/([^/]+)\/screenshot$/);
  if (screenshotMatch) {
    if (req.method !== "GET") {
      throw feedbackError("Method not allowed.", 405);
    }
    return screenshotUnavailable({
      request,
      firebaseUser,
      id: decodeId(screenshotMatch[1]),
      admin: false
    });
  }

  throw feedbackError("Feedback route not found.", 404);
}
