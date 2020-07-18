CREATE TABLE credential (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  username text,
  password_as_scrypt text
);

-- Metadata
CREATE INDEX ix_credential_updated_at_timestamp_utc on credential(updated_at_timestamp_utc);
CREATE INDEX ix_credential_updated_at_clock_count on credential(updated_at_clock_count);
CREATE INDEX ix_credential_tenant_id on credential(tenant_id);
CREATE INDEX ix_credential_parent_id on credential(parent_id);
CREATE INDEX ix_credential_set_id on credential(set_id);
CREATE INDEX ix_credential_type_id on credential(type_id);
CREATE INDEX ix_credential_state_id on credential(state_id);

-- Media-related
CREATE INDEX ix_credential_name on credential(username);
