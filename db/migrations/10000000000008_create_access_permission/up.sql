CREATE TABLE access_permission (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  access_attribute_id text, -- example: reader attribute
  access_operation_id text, -- example: read opertation
);

-- Metadata
CREATE INDEX ix_access_permission_updated_at_timestamp_utc on access_permission(updated_at_timestamp_utc);
CREATE INDEX ix_access_permission_updated_at_clock_count on access_permission(updated_at_clock_count);
CREATE INDEX ix_access_permission_tenant_id on access_permission(tenant_id);
CREATE INDEX ix_access_permission_parent_id on access_permission(parent_id);
CREATE INDEX ix_access_permission_set_id on access_permission(set_id);
CREATE INDEX ix_access_permission_type_id on access_permission(type_id);
CREATE INDEX ix_access_permission_state_id on access_permission(state_id);

-- Main
CREATE INDEX ix_access_permission_access_attribute_id on access_permission(access_attribute_id);
CREATE INDEX ix_access_permission_access_operation_id on access_permission(access_operation_id);
