CREATE TABLE access_operation (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text -- example: "read" operation
);

-- Metadata
CREATE INDEX ix_access_operation_updated_at_timestamp_utc on access_operation(updated_at_timestamp_utc);
CREATE INDEX ix_access_operation_updated_at_clock_count on access_operation(updated_at_clock_count);
CREATE INDEX ix_access_operation_tenant_id on access_operation(tenant_id);
CREATE INDEX ix_access_operation_parent_id on access_operation(parent_id);
CREATE INDEX ix_access_operation_set_id on access_operation(set_id);
CREATE INDEX ix_access_operation_type_id on access_operation(type_id);
CREATE INDEX ix_access_operation_state_id on access_operation(state_id);

-- Color-related
CREATE INDEX ix_access_operation_name on access_operation(name);
