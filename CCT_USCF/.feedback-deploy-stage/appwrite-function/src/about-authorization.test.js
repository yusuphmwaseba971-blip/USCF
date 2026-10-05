import test from 'node:test';
import assert from 'node:assert/strict';
import crypto from 'node:crypto';

const { privateKey } = crypto.generateKeyPairSync('rsa', {
  modulusLength: 2048,
  publicKeyEncoding: { type: 'spki', format: 'pem' },
  privateKeyEncoding: { type: 'pkcs1', format: 'pem' }
});

process.env.FIREBASE_PROJECT_ID = 'cct-uscf-test';
process.env.FIREBASE_CLIENT_EMAIL = 'firebase-adminsdk@test.iam.gserviceaccount.com';
process.env.FIREBASE_PRIVATE_KEY = privateKey.replace(/\n/g, '\\n');
process.env.APPWRITE_PROJECT_ID = 'cct-uscf';
process.env.APPWRITE_API_KEY = 'test-api-key';
process.env.APPWRITE_DATABASE_ID = 'cct-uscf-db';
process.env.CCT_ABOUT_BOOTSTRAP_ENABLED = 'false';
process.env.CCT_ABOUT_BOOTSTRAP_UID = 'bootstrap-uid';

const {
  buildAboutAuthorizationContext,
  authorizeAboutScope,
  authorizeAboutPermission,
  normalizeAboutScope,
  normalizeAuthorityPermissions,
  buildAboutAuthorityRecord,
  getAboutAuthorityBootstrapConfig,
  canDelegateAboutAuthority
} = await import('./index.js');

const regionalAuthority = {
  firebase_uid: 'region-owner',
  scope_type: 'REGION',
  scope_id: 'REGION-42',
  position: 'Regional Coordinator',
  permissions: ['about.history.write', 'about.leadership.write'],
  is_active: true,
  created_by: 'admin-uid',
  updated_by: 'admin-uid'
};

const branchAuthority = {
  firebase_uid: 'branch-owner',
  scope_type: 'BRANCH',
  scope_id: 'BRANCH-7',
  position: 'Branch Leader',
  permissions: ['about.history.write'],
  is_active: true,
  created_by: 'admin-uid',
  updated_by: 'admin-uid'
};

const districtAuthority = {
  firebase_uid: 'district-owner',
  scope_type: 'DISTRICT',
  scope_id: 'DISTRICT-9',
  position: 'District Secretary',
  permissions: ['about.history.write'],
  is_active: true,
  created_by: 'admin-uid',
  updated_by: 'admin-uid'
};

test('profile fields are not authoritative for About privileges', () => {
  const context = buildAboutAuthorizationContext({ uid: 'member-uid' }, {
    role: 'admin',
    leadershipLevel: 'National',
    leadershipDuty: 'Chairman',
    accountType: 'USCF_LEADER',
    authorityRecords: []
  });

  const result = authorizeAboutScope(context, 'NATIONAL', { scopeId: 'NATIONAL' });
  assert.equal(result.allowed, false);
  assert.match(result.reason, /no confirmed server-side authority/i);
});

test('server-owned authority record grants exact scope permission', () => {
  const context = buildAboutAuthorizationContext({ uid: 'region-owner' }, { authorityRecords: [regionalAuthority] });

  const result = authorizeAboutPermission({
    firebaseUid: 'region-owner',
    permission: 'about.history.write',
    scopeType: 'REGION',
    scopeId: 'REGION-42',
    authorityRecords: [regionalAuthority]
  });

  assert.equal(result.allowed, true);
  assert.equal(context.authorityRecords.length, 1);
  assert.equal(normalizeAboutScope('region'), 'REGION');
  assert.equal(result.record.scope_type, 'REGION');
});

test('branch scope permission is denied for a different branch', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'branch-owner',
    permission: 'about.history.write',
    scopeType: 'BRANCH',
    scopeId: 'BRANCH-99',
    authorityRecords: [branchAuthority]
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /no confirmed server-side authority/i);
});

test('district authority is denied for region scope', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'district-owner',
    permission: 'about.history.write',
    scopeType: 'REGION',
    scopeId: 'REGION-42',
    authorityRecords: [districtAuthority]
  });

  assert.equal(result.allowed, false);
});

test('authority is denied when the record is inactive', () => {
  const inactive = { ...regionalAuthority, is_active: false };
  const result = authorizeAboutPermission({
    firebaseUid: 'region-owner',
    permission: 'about.history.write',
    scopeType: 'REGION',
    scopeId: 'REGION-42',
    authorityRecords: [inactive]
  });

  assert.equal(result.allowed, false);
});

test('unknown permission is rejected', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'region-owner',
    permission: 'about.unknown.write',
    scopeType: 'REGION',
    scopeId: 'REGION-42',
    authorityRecords: [regionalAuthority]
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /unknown or unsupported/i);
});

test('invalid scope type is rejected', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'region-owner',
    permission: 'about.history.write',
    scopeType: 'UNKNOWN',
    scopeId: 'REGION-42',
    authorityRecords: [regionalAuthority]
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /valid About scope/i);
});

test('authority record validation rejects empty scope id', () => {
  assert.throws(() => {
    buildAboutAuthorityRecord({
      firebase_uid: 'uid-test',
      scope_type: 'REGION',
      scope_id: '',
      position: 'Lead',
      permissions: ['about.history.write']
    }, 'actor-uid');
  }, /scope_id is required/i);
});

test('buildAboutAuthorityRecord strips unknown permissions and keeps valid ones', () => {
  const record = buildAboutAuthorityRecord({
    firebase_uid: 'uid-test',
    scope_type: 'REGION',
    scope_id: 'REGION-42',
    position: 'Lead',
    permissions: ['about.history.write', 'not-valid', 'about.leadership.read']
  }, 'actor-uid');

  assert.deepEqual(record.permissions, ['about.history.write', 'about.leadership.read']);
  assert.equal(record.scope_type, 'REGION');
});

test('normalizeAuthorityPermissions accepts arrays and comma-delimited strings', () => {
  assert.deepEqual(normalizeAuthorityPermissions(['about.history.write', 'about.documents.read']), ['about.history.write', 'about.documents.read']);
  assert.deepEqual(normalizeAuthorityPermissions('about.history.write, about.documents.read'), ['about.history.write', 'about.documents.read']);
});

test('bootstrap configuration is disabled by default in the test environment', () => {
  const config = getAboutAuthorityBootstrapConfig();
  assert.equal(config.enabled, false);
  assert.equal(config.bootstrapUid, 'bootstrap-uid');
});

test('client-supplied profile role does not grant About authority', () => {
  const context = buildAboutAuthorizationContext({ uid: 'member-uid' }, {
    role: 'admin',
    leadershipLevel: 'National',
    leadershipDuty: 'Chairman',
    accountType: 'USCF_LEADER',
    isAdmin: true,
    authorityRecords: []
  });

  const result = authorizeAboutScope(context, 'NATIONAL', { scopeId: 'NATIONAL' });
  assert.equal(result.allowed, false);
});

test('permission does not match across different scope IDs', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'region-owner',
    permission: 'about.history.write',
    scopeType: 'REGION',
    scopeId: 'REGION-43',
    authorityRecords: [regionalAuthority]
  });

  assert.equal(result.allowed, false);
});

test('lower-scope authority cannot write higher-scope content', () => {
  const result = authorizeAboutPermission({
    firebaseUid: 'branch-owner',
    permission: 'about.history.write',
    scopeType: 'NATIONAL',
    scopeId: 'NATIONAL',
    authorityRecords: [branchAuthority]
  });

  assert.equal(result.allowed, false);
});

test('caller cannot manage its own authority record', () => {
  const result = canDelegateAboutAuthority({
    callerUid: 'region-owner',
    callerAuthorityRecords: [regionalAuthority],
    targetUid: 'region-owner',
    targetScopeType: 'REGION',
    targetScopeId: 'REGION-42',
    requestedPermissions: ['about.history.write']
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /own authority/i);
});

test('caller cannot grant permissions it does not already hold for the exact scope', () => {
  const result = canDelegateAboutAuthority({
    callerUid: 'region-owner',
    callerAuthorityRecords: [{ ...regionalAuthority, permissions: ['about.leadership.write'] }],
    targetUid: 'employee-1',
    targetScopeType: 'REGION',
    targetScopeId: 'REGION-42',
    requestedPermissions: ['about.documents.write']
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /does not hold/i);
});

test('caller cannot move authority into a different scope', () => {
  const result = canDelegateAboutAuthority({
    callerUid: 'region-owner',
    callerAuthorityRecords: [regionalAuthority],
    targetUid: 'employee-2',
    targetScopeType: 'REGION',
    targetScopeId: 'REGION-99',
    requestedPermissions: ['about.history.write'],
    existingAuthority: { ...regionalAuthority, scope_id: 'REGION-42', firebase_uid: 'employee-2' }
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /exact authority scope|different scope/i);
});

test('client-supplied created_by and updated_by are ignored by the authority record builder', () => {
  const record = buildAboutAuthorityRecord({
    firebase_uid: 'target-uid',
    scope_type: 'DISTRICT',
    scope_id: 'DISTRICT-9',
    position: 'District Lead',
    permissions: ['about.history.write'],
    created_by: 'bad-actor',
    updated_by: 'bad-actor',
    created_at: '2024-01-01T00:00:00.000Z',
    updated_at: '2024-01-02T00:00:00.000Z'
  }, 'server-actor-uid');

  assert.equal(record.created_by, 'server-actor-uid');
  assert.equal(record.updated_by, 'server-actor-uid');
});

test('cross-scope authority delegation is denied without exact scope match', () => {
  const result = canDelegateAboutAuthority({
    callerUid: 'region-owner',
    callerAuthorityRecords: [regionalAuthority],
    targetUid: 'district-target',
    targetScopeType: 'DISTRICT',
    targetScopeId: 'DISTRICT-9',
    requestedPermissions: ['about.history.write']
  });

  assert.equal(result.allowed, false);
  assert.match(result.reason, /exact authority scope/i);
});
