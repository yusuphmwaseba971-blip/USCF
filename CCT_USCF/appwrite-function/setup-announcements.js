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

/*
 * ============================================================
 * 1. CHURCH ANNOUNCEMENTS
 * ============================================================
 */

const preferredAnnouncementTable = process.env.APPWRITE_CHURCH_ANNOUNCEMENTS_COLLECTION_ID || process.env.APPWRITE_ANNOUNCEMENTS_COLLECTION_ID || "announcements";
const preferredNotificationTable = process.env.APPWRITE_CHURCH_NOTIFICATIONS_COLLECTION_ID || process.env.APPWRITE_NOTIFICATIONS_COLLECTION_ID || "notifications";
const preferredDeviceTokenTable = process.env.APPWRITE_CHURCH_DEVICE_TOKENS_COLLECTION_ID || process.env.APPWRITE_DEVICE_TOKENS_COLLECTION_ID || "device_tokens";
const prayerActionsTable = process.env.APPWRITE_PRAYER_ACTIONS_TABLE_ID || "cct_prayer_actions";

const announcementTables = Array.from(new Set([preferredAnnouncementTable, "church_announcements"]));
const notificationTables = Array.from(new Set([preferredNotificationTable, "church_notifications"]));
const deviceTokenTables = Array.from(new Set([preferredDeviceTokenTable, "church_device_tokens"]));

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

  await ensureTable(prayerActionsTable, "Prayer Actions");
  await ensureVarchar(prayerActionsTable, "prayer_id", 255, true);
  await ensureVarchar(prayerActionsTable, "user_uid", 255, true);
  await ensureVarchar(prayerActionsTable, "created_at", 64, true);
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
  prayerActionsTable
])) ) {
  console.log(`  - ${tableId}`);
}
console.log("");