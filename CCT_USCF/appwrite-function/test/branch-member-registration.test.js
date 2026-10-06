import assert from "node:assert/strict";
import test from "node:test";
import {
  createBranchMemberProfile,
  notifyFirstBranchMemberSafely
} from "../src/branch-member-registration.js";

class FakeFirestore {
  profiles = new Map();
  registrationSequence = 0;
  branchVersion = 0;

  async runTransaction(callback) {
    for (let attempt = 0; attempt < 5; attempt++) {
      let readBranchVersion;
      const writes = [];
      const transaction = {
        get: async reference => {
          if (reference.kind === "branch") {
            readBranchVersion ??= this.branchVersion;
            return { exists: true };
          }
          if (reference.kind === "profile") {
            const profile = this.profiles.get(reference.uid);
            return { exists: Boolean(profile), data: () => profile };
          }

          const matches = [...this.profiles.values()].some(profile =>
            profile.branchId === reference.branchId
          );
          return { empty: !matches };
        },
        update: (reference, update) => writes.push({ kind: "update", reference, update }),
        create: (reference, profile) => writes.push({ kind: "create", reference, profile })
      };
      const result = await callback(transaction);

      if (readBranchVersion !== undefined && readBranchVersion !== this.branchVersion) {
        continue;
      }

      for (const write of writes) {
        if (write.kind === "update") {
          this.registrationSequence += write.update.registrationSequence;
          this.branchVersion++;
        } else {
          this.profiles.set(write.reference.uid, write.profile);
        }
      }
      return result;
    }

    throw new Error("Transaction aborted after repeated branch conflicts.");
  }
}

function registration(firestore, uid, branchId = 31) {
  return createBranchMemberProfile({
    firestore,
    branchReference: { kind: "branch" },
    profileReference: { kind: "profile", uid },
    memberQueries: [{ kind: "members", branchId }],
    profile: { uid, branchId },
    eventId: `branch-first-member:${branchId}:${uid}`,
    registrationSequence: 1
  });
}

test("an empty branch creates its first profile and claims one event", async () => {
  const firestore = new FakeFirestore();

  const result = await registration(firestore, "first");

  assert.deepEqual(result, {
    created: true,
    firstMemberOfBranch: true,
    eventId: "branch-first-member:31:first"
  });
  assert.equal(firestore.profiles.size, 1);
  assert.equal(
    firestore.profiles.get("first").firstBranchMemberEventId,
    "branch-first-member:31:first"
  );
});

test("an existing branch member prevents a first-member event", async () => {
  const firestore = new FakeFirestore();
  await registration(firestore, "first");

  const result = await registration(firestore, "second");

  assert.deepEqual(result, {
    created: true,
    firstMemberOfBranch: false,
    eventId: null
  });
  const third = await registration(firestore, "third");
  assert.equal(third.created, true);
  assert.equal(third.firstMemberOfBranch, false);
});

test("a different empty branch has its own first-member event", async () => {
  const firestore = new FakeFirestore();

  const result = await registration(firestore, "other-branch-member", 42);

  assert.equal(result.created, true);
  assert.equal(result.firstMemberOfBranch, true);
  assert.equal(result.eventId, "branch-first-member:42:other-branch-member");
});

test("retrying a profile create neither duplicates the member nor the event", async () => {
  const firestore = new FakeFirestore();
  const firstAttempt = await registration(firestore, "first");
  const retry = await registration(firestore, "first");
  let notificationCount = 0;

  await Promise.all([firstAttempt, retry].map(result =>
    notifyFirstBranchMemberSafely(
      result,
      async () => {
        notificationCount++;
      },
      () => {}
    )
  ));

  assert.equal(firstAttempt.firstMemberOfBranch, true);
  assert.deepEqual(retry, {
    created: false,
    firstMemberOfBranch: false
  });
  assert.equal(firestore.profiles.size, 1);
  assert.equal(notificationCount, 1);
});

test("concurrent registrations for an empty branch produce one first-member event", async () => {
  const firestore = new FakeFirestore();
  let notificationCount = 0;

  const results = await Promise.all([
    registration(firestore, "first"),
    registration(firestore, "second")
  ]);
  await Promise.all(results.map(result =>
    notifyFirstBranchMemberSafely(
      result,
      async () => {
        notificationCount++;
      },
      () => {}
    )
  ));

  assert.equal(results.filter(result => result.firstMemberOfBranch).length, 1);
  assert.equal(notificationCount, 1);
  assert.equal(firestore.registrationSequence, 2);
  assert.equal(firestore.profiles.size, 2);
});

test("an FCM failure is reported but does not turn a created profile into a failure", async () => {
  const errors = [];
  const registrationResult = {
    created: true,
    firstMemberOfBranch: true
  };

  const notificationError = await notifyFirstBranchMemberSafely(
    registrationResult,
    async () => {
      throw new Error("FCM unavailable");
    },
    message => errors.push(message)
  );

  assert.equal(notificationError, "FCM unavailable");
  assert.deepEqual(errors, ["FCM unavailable"]);
  assert.equal(registrationResult.created, true);
});
