CREATE TABLE room (
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
CREATE INDEX ix_room_updated_at_timestamp_utc on room(updated_at_timestamp_utc);
CREATE INDEX ix_room_updated_at_clock_count on room(updated_at_clock_count);
CREATE INDEX ix_room_tenant_id on room(tenant_id);
CREATE INDEX ix_room_parent_id on room(parent_id);
CREATE INDEX ix_room_set_id on room(set_id);
CREATE INDEX ix_room_type_id on room(type_id);
CREATE INDEX ix_room_state_id on room(state_id);

-- Media-related
CREATE INDEX ix_room_name on room(name);
