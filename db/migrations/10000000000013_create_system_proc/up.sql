CREATE TABLE system_proc (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  pid integer, -- example: 1 is the first process id
  name text -- example: '/usr/bin/sh a b c'
);

-- Metadata
CREATE INDEX ix_system_proc_updated_at_timestamp_utc on system_proc(updated_at_timestamp_utc);
CREATE INDEX ix_system_proc_updated_at_clock_count on system_proc(updated_at_clock_count);
CREATE INDEX ix_system_proc_tenant_id on system_proc(tenant_id);
CREATE INDEX ix_system_proc_parent_id on system_proc(parent_id);
CREATE INDEX ix_system_proc_set_id on system_proc(set_id);
CREATE INDEX ix_system_proc_type_id on system_proc(type_id);
CREATE INDEX ix_system_proc_state_id on system_proc(state_id);

-- General-related
CREATE INDEX ix_system_proc_pid on system_proc(pid);
CREATE INDEX ix_system_proc_cmd on system_proc(cmd);
