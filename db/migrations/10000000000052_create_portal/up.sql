CREATE TABLE portal (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text
);

-- Metadata
CREATE INDEX ix_portal_updated_at_timestamp_utc on portal(updated_at_timestamp_utc);
CREATE INDEX ix_portal_updated_at_clock_count on portal(updated_at_clock_count);
CREATE INDEX ix_portal_tenant_id on portal(tenant_id);
CREATE INDEX ix_portal_parent_id on portal(parent_id);
CREATE INDEX ix_portal_set_id on portal(set_id);
CREATE INDEX ix_portal_type_id on portal(type_id);
CREATE INDEX ix_portal_state_id on portal(state_id);

-- Media-related
CREATE INDEX ix_portal_name on portal(name);
