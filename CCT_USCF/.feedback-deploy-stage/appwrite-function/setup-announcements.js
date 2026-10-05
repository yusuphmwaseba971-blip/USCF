import process from "node:process";

const endpoint =
  process.env.APPWRITE_ENDPOINT || "https://sgp.cloud.appwrite.io/v1";

const projectId =
  process.env.APPWRITE_PROJECT_ID || "project-sgp-cct-uscf";

const databaseId =
  process.env.APPWRITE_DATABASE_ID || "cct-uscf-db";

const apiKey = process.env.APPWRITE_API_KEY;

if (!apiKey) {
  throw new Error("Set APPWRITE_API_KEY before running this setup.");
}

const headers = {
  "X-Appwrite-Project": projectId,
  "X-Appwrite-Key": apiKey,
  "Content-Type": "application/json",
  "Accept": "application/json"
};

async function request(path, method = "GET", body = undefined) {
  const response = await fetch(`${endpoint}${path}`, {
    method,
    headers,
    body: body === undefined ? undefined : JSON.stringify(body)
  });

  const text = await response.text();

  let data = {};
  try {
    data = text ? JSON.parse(text) : {};
  } catch {
    data = { raw: text };
  }

  if (!response.ok) {
    const message = data?.message || data?.error || data?.raw || JSON.stringify(data, null, 2);

    if (response.status === 401 && /(collections\.write|collections\.read|attributes\.write|databases\.write|databases\.read|documents\.write|documents\.read|locale\.read)/i.test(String(message))) {
      throw new Error(
        `${method} ${path} failed (${response.status})\n` +
        JSON.stringify(data, null, 2) +
        "\n\nYour APPWRITE_API_KEY is missing required Appwrite scopes. Create a new API key with at least: Databases read/write, Collections read/write, Attributes read/write, Documents read/write, Locale read."
      );
    }

    throw new Error(
      `${method} ${path} failed (${response.status})\n` +
      JSON.stringify(data, null, 2)
    );
  }

  return data;
}

async function tableExists(tableId) {
  try {
    await request(
      `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}`
    );
    return true;
  } catch (error) {
    if (String(error.message).includes("(404)")) {
      return false;
    }
    throw error;
  }
}

async function ensureTable(tableId, name) {
  if (await tableExists(tableId)) {
    console.log(`Table already exists: ${tableId}`);
    return;
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables`,
    "POST",
    {
      tableId,
      name,
      rowSecurity: false
    }
  );

  console.log(`Created table: ${tableId}`);
}

async function columnExists(tableId, columnId) {
  try {
    await request(
      `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/columns/${encodeURIComponent(columnId)}`
    );
    return true;
  } catch (error) {
    if (String(error.message).includes("(404)")) {
      return false;
    }
    throw error;
  }
}

async function ensureVarchar(tableId, key, size = 255, required = false) {
  if (await columnExists(tableId, key)) {
    console.log(`  Column already exists: ${tableId}.${key}`);
    return;
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/columns/varchar`,
    "POST",
    {
      key,
      size,
      required
    }
  );

  console.log(`  Created varchar: ${tableId}.${key}`);
}

async function ensureText(tableId, key, required = false) {
  if (await columnExists(tableId, key)) {
    console.log(`  Column already exists: ${tableId}.${key}`);
    return;
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/columns/text`,
    "POST",
    {
      key,
      required
    }
  );

  console.log(`  Created text: ${tableId}.${key}`);
}

async function ensureInteger(tableId, key, required = false) {
  if (await columnExists(tableId, key)) {
    console.log(`  Column already exists: ${tableId}.${key}`);
    return;
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/columns/integer`,
    "POST",
    {
      key,
      required
    }
  );

  console.log(`  Created integer: ${tableId}.${key}`);
}

async function ensureBoolean(
  tableId,
  key,
  required = false,
  defaultValue = false
) {
  if (await columnExists(tableId, key)) {
    console.log(`  Column already exists: ${tableId}.${key}`);
    return;
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/columns/boolean`,
    "POST",
    {
      key,
      required,
      default: defaultValue
    }
  );

  console.log(`  Created boolean: ${tableId}.${key}`);
}

async function ensureIndex(tableId, key, type, columns, orders = undefined) {
  try {
    await request(
      `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/indexes/${encodeURIComponent(key)}`
    );
    console.log(`  Index already exists: ${tableId}.${key}`);
    return;
  } catch (error) {
    if (!String(error.message).includes("(404)")) {
      throw error;
    }
  }

  await request(
    `/tablesdb/${encodeURIComponent(databaseId)}/tables/${encodeURIComponent(tableId)}/indexes`,
    "POST",
    {
      key,
      type,
      columns,
      ...(orders ? { orders } : {})
    }
  );
  console.log(`  Created ${type} index: ${tableId}.${key}`);
}

/*
 * ============================================================
 * 1. CHURCH ANNOUNCEMENTS
 * ============================================================
 */

const preferredAnnouncementTable = process.env.APPWRITE_CHURCH_ANNOUNCEMENTS_COLLECTION_ID || process.env.APPWRITE_ANNOUNCEMENTS_COLLECTION_ID || "announcements";
const preferredNotificationTable = process.env.APPWRITE_CHURCH_NOTIFICATIONS_COLLECTION_ID || process.env.APPWRITE_NOTIFICATIONS_COLLECTION_ID || "notifications";
const preferredDeviceTokenTable = process.env.APPWRITE_CHURCH_DEVICE_TOKENS_COLLECTION_ID || process.env.APPWRITE_DEVICE_TOKENS_COLLECTION_ID || "device_tokens";
const prayerActionsTable = process.env.APPWRITE_PRAYER_ACTIONS_TABLE_ID || "cct_prayer_actions";
const postLikesTable = process.env.APPWRITE_CCT_POST_LIKES_TABLE_ID || "cct_post_likes";
const postCommentsTable = process.env.APPWRITE_CCT_POST_COMMENTS_TABLE_ID || "cct_post_comments";

const announcementTables = Array.from(new Set([preferredAnnouncementTable, "church_announcements"]));
const notificationTables = Array.from(new Set([preferredNotificationTable, "church_notifications"]));
const deviceTokenTables = Array.from(new Set([preferredDeviceTokenTable, "church_device_tokens"]));

/*
 * ============================================================
 * 0. COMMUNITY GROUP REGISTRY
 * ============================================================
 */

const groupsTable = process.env.APPWRITE_GROUPS_TABLE_ID || "cct_groups";
const groupMembersTable = process.env.APPWRITE_GROUP_MEMBERS_TABLE_ID || "cct_group_members";

await ensureTable(groupsTable, "CCT Groups");
for (const [key, size] of [
  ["group_id", 128],
  ["name", 255],
  ["group_type", 64],
  ["scope_type", 32],
  ["scope_id", 128],
  ["region_id", 128],
  ["district_id", 128],
  ["branch_id", 128],
  ["created_by_uid", 255],
  ["icon_key", 64],
  ["created_at", 64],
  ["updated_at", 64]
]) {
  await ensureVarchar(groupsTable, key, size);
}
await ensureText(groupsTable, "description");
await ensureBoolean(groupsTable, "is_standard", false, false);
await ensureBoolean(groupsTable, "is_active", false, true);
await ensureIndex(groupsTable, "groups_group_id_unique", "unique", ["group_id"]);
await ensureIndex(
  groupsTable,
  "groups_scope_identity_unique",
  "unique",
  ["scope_type", "scope_id", "group_type"]
);
await ensureIndex(groupsTable, "groups_scope", "key", ["scope_type", "scope_id"]);
await ensureIndex(groupsTable, "groups_group_type", "key", ["group_type"]);
await ensureIndex(groupsTable, "groups_active", "key", ["is_active"]);

await ensureTable(groupMembersTable, "Community Group Members");
for (const [key, size] of [
  ["group_id", 128],
  ["user_uid", 255],
  ["role", 64],
  ["joined_at", 64]
]) {
  await ensureVarchar(groupMembersTable, key, size);
}
await ensureBoolean(groupMembersTable, "is_active", false, true);
await ensureIndex(groupMembersTable, "group_user_unique", "unique", ["group_id", "user_uid"]);
await ensureIndex(groupMembersTable, "group_members_active", "key", ["group_id", "user_uid", "is_active"]);

await ensureTable(prayerActionsTable, "Prayer Actions");
await ensureVarchar(prayerActionsTable, "prayer_id", 255, true);
await ensureVarchar(prayerActionsTable, "user_uid", 255, true);
await ensureVarchar(prayerActionsTable, "created_at", 64, true);
await ensureIndex(
  prayerActionsTable,
  "prayer_user_unique",
  "unique",
  ["prayer_id", "user_uid"]
);

await ensureTable(postLikesTable, "CCT Post Likes");
await ensureVarchar(postLikesTable, "post_id", 128, true);
await ensureVarchar(postLikesTable, "user_id", 255, true);
await ensureIndex(postLikesTable, "post_user_unique", "unique", ["post_id", "user_id"]);
await ensureIndex(postLikesTable, "post_likes_post", "key", ["post_id"]);

await ensureTable(postCommentsTable, "CCT Post Comments");
await ensureVarchar(postCommentsTable, "post_id", 128, true);
await ensureVarchar(postCommentsTable, "user_id", 255, true);
await ensureVarchar(postCommentsTable, "author_name", 255);
await ensureText(postCommentsTable, "content", true);
await ensureIndex(postCommentsTable, "post_comments_post", "key", ["post_id"]);

for (const tableId of announcementTables) {
  await ensureTable(tableId, "Church Announcements");
  for (const [key, size] of [
    ["announcement_id", 64],
    ["title", 255],
    ["sender_uid", 255],
    ["sender_name", 255],
    ["scope_type", 32],
    ["target_level", 32],
    ["image_url", 2048],
    ["attachment_url", 2048],
    ["expires_at", 64],
    ["created_at", 64]
  ]) {
    await ensureVarchar(tableId, key, size);
  }
  await ensureText(tableId, "content");
  await ensureText(tableId, "message");
  await ensureBoolean(tableId, "is_active", false, true);
  for (const key of ["region_id", "district_id", "branch_id"]) {
    await ensureVarchar(tableId, key, 128);
  }
}

/*
 * ============================================================
 * 2. CHURCH NOTIFICATIONS
 * ============================================================
 */

for (const tableId of notificationTables) {
  await ensureTable(tableId, "Church Notifications");
  for (const [key, size] of [
    ["announcement_id", 64],
    ["user_uid", 255],
    ["title", 255],
    ["sender_name", 255],
    ["target_level", 32],
    ["created_at", 64]
  ]) {
    await ensureVarchar(tableId, key, size);
  }
  await ensureText(tableId, "message");
  await ensureBoolean(tableId, "is_read", false, false);
}

/*
 * ============================================================
 * 3. CHURCH DEVICE TOKENS
 * ============================================================
 */

for (const tableId of deviceTokenTables) {
  await ensureTable(tableId, "Church Device Tokens");
  for (const [key, size] of [
    ["user_uid", 255],
    ["token", 4096],
    ["user_name", 255],
    ["updated_at", 64]
  ]) {
    await ensureVarchar(tableId, key, size);
  }

  for (const key of ["region_id", "district_id", "branch_id"]) {
    await ensureInteger(tableId, key);
  }
}

console.log("");
console.log("==============================================");
console.log("Church announcement database setup completed.");
console.log("==============================================");
console.log("");
console.log(`Project : ${projectId}`);
console.log(`Database: ${databaseId}`);
console.log("");
console.log("Tables prepared:");
for (const tableId of Array.from(new Set([
  preferredAnnouncementTable,
  ...announcementTables,
  preferredNotificationTable,
  ...notificationTables,
  preferredDeviceTokenTable,
  ...deviceTokenTables,
  groupsTable,
  groupMembersTable,
  prayerActionsTable,
  postLikesTable,
  postCommentsTable
])) ) {
  console.log(`  - ${tableId}`);
}
console.log("");