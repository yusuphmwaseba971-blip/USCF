import test from "node:test";
import assert from "node:assert/strict";
import {
  authorizeAboutContentWriter,
  isAboutContentLeader,
  saveAuthorizedAboutContent,
  upsertAboutContentDocument
} from "./about-content.js";

test("Leader role comparison trims whitespace and ignores casing", () => {
  assert.equal(isAboutContentLeader(" Leader "), true);
  assert.equal(isAboutContentLeader("member"), false);
  assert.equal(isAboutContentLeader(undefined), false);
});

test("About writes authorize only the verified UID's existing role", async () => {
  const calls = [];
  const uid = await authorizeAboutContentWriter(
    { uid: "firebase-uid" },
    async requestedUid => {
      calls.push(requestedUid);
      return " Leader ";
    }
  );

  assert.equal(uid, "firebase-uid");
  assert.deepEqual(calls, ["firebase-uid"]);
});

test("About write authorization rejects non-Leaders and missing identities", async () => {
  await assert.rejects(
    authorizeAboutContentWriter({ uid: "member-uid" }, async () => "Member"),
    error => error.statusCode === 403
  );
  await assert.rejects(
    authorizeAboutContentWriter(null, async () => "Leader"),
    error => error.statusCode === 401
  );
});

test("non-Leader profile cannot write even when the request body claims Leader", async () => {
  let appwriteCalled = false;
  await assert.rejects(
    saveAuthorizedAboutContent({
      firebaseUser: { uid: "member-uid" },
      readRole: async () => "Member",
      collectionId: "cct_history",
      kind: "history",
      body: {
        role: "Leader",
        title: "Should not write",
        recordedBy: "Member",
        content: "Rejected."
      },
      request: async () => { appwriteCalled = true; }
    }),
    error => error.statusCode === 403
  );
  assert.equal(appwriteCalled, false);
});

test("Leader History is persisted and can be fetched again", async () => {
  const documents = new Map();
  const requests = async (collectionId, method, path, payload) => {
    assert.equal(collectionId, "cct_history");
    if (method === "POST") {
      const document = { $id: "history-1", ...payload.data };
      documents.set(document.$id, document);
      return document;
    }
    if (method === "PATCH") {
      const documentId = decodeURIComponent(path.slice(1));
      const document = { ...documents.get(documentId), ...payload.data };
      documents.set(documentId, document);
      return document;
    }
    if (method === "GET") return documents.get(path.slice(1));
    throw new Error(`Unexpected request ${method}`);
  };

  const saved = await saveAuthorizedAboutContent({
    firebaseUser: { uid: "leader-uid" },
    readRole: async uid => uid === "leader-uid" ? "Leader" : "Member",
    collectionId: "cct_history",
    kind: "history",
    body: {
      title: "CCT-USCF History",
      period: "2020–2026",
      recordedBy: "A. Historian",
      recordedByRole: "Secretary",
      content: "Recorded history."
    },
    request: requests,
    now: "2026-10-05T00:00:00.000Z"
  });
  const fetched = await requests("cct_history", "GET", `/${saved.item.$id}`);

  assert.equal(fetched.title, "CCT-USCF History");
  assert.equal(fetched.period, "2020–2026");
  assert.equal(fetched.recorded_by, "A. Historian");
  assert.equal(fetched.updated_by, "leader-uid");
  assert.equal(fetched.status, "PUBLISHED");
});

test("Mission and Leadership updates preserve existing fields and ignore request roles", async () => {
  const stored = {
    "cct_mission_vision:mv-1": { $id: "mv-1", vision: "Original vision", organization_level: "REGION-1" },
    "cct_leadership:leader-1": { $id: "leader-1", position_id: "president" }
  };
  const requests = async (collectionId, method, path, payload) => {
    const id = decodeURIComponent(path.slice(1));
    const key = `${collectionId}:${id}`;
    if (method === "GET") return stored[key];
    assert.equal(method, "PATCH");
    stored[key] = { ...stored[key], ...payload.data };
    return stored[key];
  };

  const savedMission = await saveAuthorizedAboutContent({
    firebaseUser: { uid: "leader-uid" },
    readRole: async () => "Leader",
    collectionId: "cct_mission_vision",
    kind: "missionVision",
    body: { id: "mv-1", mission: "Updated mission", vision: "Original vision", role: "Member" },
    request: requests
  });
  const savedLeadership = await saveAuthorizedAboutContent({
    firebaseUser: { uid: "leader-uid" },
    readRole: async () => "Leader",
    collectionId: "cct_leadership",
    kind: "leadership",
    body: {
      id: "leader-1",
      userName: "A. Leader",
      positionName: "President",
      organizationLevel: "National",
      organizationId: "NATIONAL",
      organizationName: "CCT-USCF",
      description: "Biography",
      term: "2024–2026",
      role: "Member"
    },
    request: requests
  });

  const fetchedMission = await requests("cct_mission_vision", "GET", `/${savedMission.item.$id}`);
  const fetchedLeadership = await requests("cct_leadership", "GET", `/${savedLeadership.item.$id}`);

  assert.equal(fetchedMission.mission, "Updated mission");
  assert.equal(fetchedMission.vision, "Original vision");
  assert.equal(fetchedMission.organization_level, "REGION-1");
  assert.equal(fetchedMission.role, undefined);
  assert.equal(fetchedLeadership.position_id, "president");
  assert.equal(fetchedLeadership.term, "2024–2026");
});

test("About write payload validation rejects missing required fields", async () => {
  await assert.rejects(
    upsertAboutContentDocument({
      collectionId: "cct_history",
      kind: "history",
      actorUid: "leader-uid",
      body: { title: "Incomplete", content: "" },
      request: async () => assert.fail("Invalid write reached Appwrite")
    }),
    /Written\/Recorded By is required/
  );
});
