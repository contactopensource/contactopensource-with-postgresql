CREATE TABLE system_path (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Tag-related
  iid integer, -- example: 1000 is inode id 1000
  name text -- example: '/etc/environment'
);

-- Metadata
CREATE INDEX ix_system_path_updated_at_timestamp_utc on system_path(updated_at_timestamp_utc);
CREATE INDEX ix_system_path_updated_at_clock_count on system_path(updated_at_clock_count);
CREATE INDEX ix_system_path_tenant_id on system_path(tenant_id);
CREATE INDEX ix_system_path_parent_id on system_path(parent_id);
CREATE INDEX ix_system_path_set_id on system_path(set_id);
CREATE INDEX ix_system_path_type_id on system_path(type_id);
CREATE INDEX ix_system_path_state_id on system_path(state_id);

-- General-related
CREATE INDEX ix_system_path_iid on system_path(iid);
CREATE INDEX ix_system_path_name on system_path(name);
