CREATE TABLE system_user (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  uid integer, -- example: 1000 is user id 1000
  name text -- example: 'alice'
);

-- Metadata
CREATE INDEX ix_system_user_updated_at_timestamp_utc on system_user(updated_at_timestamp_utc);
CREATE INDEX ix_system_user_updated_at_clock_count on system_user(updated_at_clock_count);
CREATE INDEX ix_system_user_tenant_id on system_user(tenant_id);
CREATE INDEX ix_system_user_parent_id on system_user(parent_id);
CREATE INDEX ix_system_user_set_id on system_user(set_id);
CREATE INDEX ix_system_user_type_id on system_user(type_id);
CREATE INDEX ix_system_user_state_id on system_user(state_id);

-- Main
CREATE INDEX ix_system_user_uid on system_user(uid);
CREATE INDEX ix_system_user_name on system_user(name);
