import assert from "node:assert/strict";
import test from "node:test";
import {
  buildGroupMessageQueries,
  getTrustedRegistrationCutoff
} from "../src/group-message-visibility.js";

const registrationCutoff = "2026-10-01T10:00:00.000Z";

test("registration cutoff comes from verified Firebase account metadata", async () => {
  const auth = {
    async getUser(uid) {
      assert.equal(uid, "new-user");
      return {
        metadata: {
          creationTime: registrationCutoff
        }
      };
    }
  };

  assert.equal(
    await getTrustedRegistrationCutoff(auth, "new-user"),
    registrationCutoff
  );
});

test("group message query excludes pre-registration rows before returning the page", () => {
  const queries = buildGroupMessageQueries({
    communityId: "group-exact-id",
    organizationalLevel: "Branch",
    branchId: 17,
    regionId: null,
    districtId: null,
    registrationCutoff,
    membershipSince: "2020-01-01T00:00:00.000Z",
    limit: 50
  });
  const cutoffQuery = queries.find(query =>
    query.method === "greaterThanEqual" &&
    query.attribute === "created_at"
  );

  assert.deepEqual(cutoffQuery, {
    method: "greaterThanEqual",
    attribute: "created_at",
    values: [registrationCutoff]
  });
  assert.equal(
    queries.some(query =>
      query.values?.includes("2020-01-01T00:00:00.000Z")
    ),
    false
  );
  assert.ok(queries.some(query =>
    query.method === "equal" &&
    query.attribute === "community_id" &&
    query.values[0] === "group-exact-id"
  ));
  assert.ok(queries.some(query =>
    query.method === "limit" && query.values[0] === 50
  ));
  assert.ok(queries.some(query =>
    query.method === "orderDesc" &&
    query.attribute === "created_at"
  ));

  const timeline = [
    { messageId: "1", created_at: "2026-09-30T18:00:00.000Z" },
    { messageId: "2", created_at: "2026-10-01T09:30:00.000Z" },
    { messageId: "3", created_at: "2026-10-01T10:01:00.000Z" },
    { messageId: "4", created_at: "2026-10-01T10:05:00.000Z" }
  ];
  const serverQueryResult = timeline.filter(message =>
    message.created_at >= cutoffQuery.values[0]
  );

  assert.deepEqual(
    serverQueryResult.map(message => message.messageId),
    ["3", "4"]
  );
  assert.ok(serverQueryResult.every(message =>
    message.created_at >= registrationCutoff
  ));
});

test("incremental and cursor pages retain the trusted cutoff", () => {
  const queries = buildGroupMessageQueries({
    communityId: "group-exact-id",
    organizationalLevel: "Branch",
    branchId: 17,
    regionId: null,
    districtId: null,
    registrationCutoff,
    newerThan: "2026-10-01T10:03:00.000Z",
    cursor: "last-eligible-row",
    limit: 25
  });

  assert.ok(queries.some(query =>
    query.method === "greaterThanEqual" &&
    query.attribute === "created_at" &&
    query.values[0] === registrationCutoff
  ));
  assert.ok(queries.some(query =>
    query.method === "greaterThan" &&
    query.attribute === "created_at" &&
    query.values[0] === "2026-10-01T10:03:00.000Z"
  ));
  assert.ok(queries.some(query =>
    query.method === "cursorAfter" &&
    query.values[0] === "last-eligible-row"
  ));
  assert.ok(queries.some(query =>
    query.method === "orderAsc" &&
    query.attribute === "created_at"
  ));
});

test("a message created exactly at registration time is eligible", () => {
  const queries = buildGroupMessageQueries({
    communityId: "group-exact-id",
    organizationalLevel: "Branch",
    branchId: 17,
    regionId: null,
    districtId: null,
    registrationCutoff,
    limit: 50
  });
  const cutoffQuery = queries.find(query =>
    query.method === "greaterThanEqual" &&
    query.attribute === "created_at"
  );
  const exactBoundaryMessage = {
    created_at: registrationCutoff
  };

  assert.ok(exactBoundaryMessage.created_at >= cutoffQuery.values[0]);
});

test("a missing or invalid server registration timestamp fails closed", async () => {
  await assert.rejects(
    getTrustedRegistrationCutoff({
      async getUser() {
        return { metadata: {} };
      }
    }, "user-without-metadata"),
    /no valid server registration timestamp/
  );
});
