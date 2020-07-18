CREATE TABLE access_user (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text -- example: "Alice"
);

-- Metadata
CREATE INDEX ix_access_user_updated_at_timestamp_utc on access_user(updated_at_timestamp_utc);
CREATE INDEX ix_access_user_updated_at_clock_count on access_user(updated_at_clock_count);
CREATE INDEX ix_access_user_tenant_id on access_user(tenant_id);
CREATE INDEX ix_access_user_parent_id on access_user(parent_id);
CREATE INDEX ix_access_user_set_id on access_user(set_id);
CREATE INDEX ix_access_user_type_id on access_user(type_id);
CREATE INDEX ix_access_user_state_id on access_user(state_id);

-- Main
CREATE INDEX ix_access_user_name on access_user(name);
