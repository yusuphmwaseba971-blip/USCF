import test from "node:test";
import assert from "node:assert/strict";
import {
  FEEDBACK_COLLECTION_ID,
  FEEDBACK_DATABASE_ID,
  handleFeedbackRequest
} from "./feedback.js";

function routeRequest({
  route,
  method = "GET",
  uid = "user-a",
  claims = {},
  body = {},
  query = {}
}) {
  const calls = [];
  const request = async (...args) => {
    calls.push(args);
    const [collectionId, requestMethod, path, payload, queries] = args;
    assert.equal(collectionId, FEEDBACK_COLLECTION_ID);
    if (requestMethod === "POST") {
      return { $id: payload.documentId, $createdAt: "2026-10-05T10:00:00.000Z", ...payload.data };
    }
    if (requestMethod === "GET" && path.startsWith("/")) {
      return { $id: path.slice(1), user_id: "user-a", feedback_reference: "CCT-TEST", status: "New" };
    }
    if (requestMethod === "GET") {
      const ownershipFilter = queries?.find(query => query.attribute === "user_id");
      return {
        documents: ownershipFilter
          ? [{ $id: "a-report", user_id: ownershipFilter.values[0], type: "Bug", status: "New" }]
          : [],
        total: ownershipFilter ? 1 : 0
      };
    }
    if (requestMethod === "PATCH") {
      return { $id: path.slice(1), user_id: "user-a", feedback_reference: "CCT-TEST", status: payload.data.status };
    }
    throw new Error(`Unexpected request: ${requestMethod} ${path}`);
  };

  return {
    calls,
    invoke: options => handleFeedbackRequest({
      req: { method, body, query, headers: { authorization: "Bearer test-token" } },
      route,
      log: () => {},
      verifyFirebaseRequest: async () => ({ uid, ...claims }),
      request
    })
  };
}

test("feedback submissions persist to app_feedback using only the verified UID", async () => {
  const fixture = routeRequest({
    route: "/api/feedback",
    method: "POST",
    body: {
      requestId: "request-1",
      userId: "attacker-uid",
      user_id: "attacker-uid",
      isAdmin: true,
      type: "Bug",
      category: "Prayer",
      title: "Prayer reminder issue",
      description: "A reminder did not appear.",
      expectedResult: "The reminder appears.",
      actualResult: "No reminder appeared.",
      appVersion: "1.0.0",
      deviceModel: "Test device",
      androidVersion: "16"
    }
  });

  const result = await fixture.invoke();
  const [, , , payload] = fixture.calls[0];
  assert.equal(FEEDBACK_DATABASE_ID, "cct-uscf-db");
  assert.equal(result.statusCode, 201);
  assert.equal(result.body.success, true);
  assert.equal(payload.data.user_id, "user-a");
  assert.equal(payload.data.type, "Bug");
  assert.equal(payload.data.category, "Prayer");
  assert.equal(payload.data.feedback_reference.length, 32);
  assert.equal(payload.data.status, "New");
  assert.equal(payload.data.isAdmin, undefined);
});

test("My Reports queries and returns only the UID from the verified Firebase token", async () => {
  const fixture = routeRequest({
    route: "/api/feedback/mine",
    query: { userId: "user-b", offset: "0", limit: "20" }
  });

  const result = await fixture.invoke();
  const queries = fixture.calls[0][4];
  assert.deepEqual(
    queries.find(query => query.attribute === "user_id"),
    { method: "equal", attribute: "user_id", values: ["user-a"] }
  );
  assert.equal(result.body.reports[0].user_id, "user-a");
});

test("a user cannot retrieve another user's report by document ID", async () => {
  const fixture = routeRequest({ route: "/api/feedback/mine/other-report", uid: "user-b" });
  await assert.rejects(fixture.invoke(), error => error.statusCode === 404);
});

test("the admin claim is required before listing or changing feedback", async () => {
  const list = routeRequest({ route: "/api/feedback/admin/reports" });
  await assert.rejects(list.invoke(), error => error.statusCode === 403);
  assert.equal(list.calls.length, 0);

  const update = routeRequest({
    route: "/api/feedback/admin/reports/report-1/status",
    method: "PATCH",
    body: { status: "Fixed", feedbackAdmin: true },
    claims: {}
  });
  await assert.rejects(update.invoke(), error => error.statusCode === 403);
  assert.equal(update.calls.length, 0);
});

test("admin operations accept only the verified feedbackAdmin custom claim", async () => {
  const fixture = routeRequest({
    route: "/api/feedback/admin/reports/report-1/status",
    method: "PATCH",
    claims: { feedbackAdmin: true },
    body: { status: "Fixed", feedbackAdmin: false }
  });

  const result = await fixture.invoke();
  assert.equal(result.body.report.status, "Fixed");
  assert.equal(fixture.calls.at(-1)[3].data.status, "Fixed");
});

test("legacy support submissions cannot use a separate collection route", async () => {
  const fixture = routeRequest({ route: "/api/support/feedback", method: "POST" });
  await assert.rejects(fixture.invoke(), error => error.statusCode === 410);
});

test("feedback screenshots fail explicitly until an existing private bucket is available", async () => {
  const fixture = routeRequest({
    route: "/api/feedback",
    method: "POST",
    body: {
      type: "Bug",
      category: "Other",
      title: "Screenshot test",
      description: "Description",
      expectedResult: "Expected",
      actualResult: "Actual",
      screenshotBase64: "dGVzdA=="
    }
  });
  await assert.rejects(fixture.invoke(), error => error.statusCode === 503);
  assert.equal(fixture.calls.length, 0);
});
