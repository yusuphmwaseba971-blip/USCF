export async function createBranchMemberProfile({
  firestore,
  branchReference,
  profileReference,
  memberQueries,
  profile,
  eventId,
  registrationSequence
}) {
  return firestore.runTransaction(async transaction => {
    const branchSnapshot = branchReference
      ? await transaction.get(branchReference)
      : null;
    const existingProfile = await transaction.get(profileReference);
    if (branchReference && !branchSnapshot?.exists) {
      throw new Error("The selected branch no longer exists.");
    }

    if (existingProfile.exists) {
      return { created: false, firstMemberOfBranch: false };
    }

    const membershipSnapshots = await Promise.all(
      memberQueries.map(query => transaction.get(query))
    );
    const firstMemberOfBranch = Boolean(branchReference) &&
      membershipSnapshots.every(snapshot => snapshot.empty);

    if (branchReference) {
      transaction.update(branchReference, { registrationSequence });
    }

    transaction.create(profileReference, {
      ...profile,
      ...(firstMemberOfBranch ? { firstBranchMemberEventId: eventId } : {})
    });

    return {
      created: true,
      firstMemberOfBranch,
      eventId: firstMemberOfBranch ? eventId : null
    };
  });
}

export async function notifyFirstBranchMemberSafely(
  registration,
  notify,
  log
) {
  if (!registration.created || !registration.firstMemberOfBranch) {
    return null;
  }

  try {
    await notify();
    return null;
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    log(message);
    return message;
  }
}
