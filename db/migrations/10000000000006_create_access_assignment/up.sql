CREATE TABLE access_assignment (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  access_user_id text, -- example: access user "Alice"
  access_attribute_id text -- example: access attribute "reader"
);

-- Metadata
CREATE INDEX ix_access_assignment_updated_at_timestamp_utc on access_assignment(updated_at_timestamp_utc);
CREATE INDEX ix_access_assignment_updated_at_clock_count on access_assignment(updated_at_clock_count);
CREATE INDEX ix_access_assignment_tenant_id on access_assignment(tenant_id);
CREATE INDEX ix_access_assignment_parent_id on access_assignment(parent_id);
CREATE INDEX ix_access_assignment_set_id on access_assignment(set_id);
CREATE INDEX ix_access_assignment_type_id on access_assignment(type_id);
CREATE INDEX ix_access_assignment_state_id on access_assignment(state_id);

-- Main
CREATE INDEX ix_access_assignment_access_user_id on access_assignment(access_user_id);
CREATE INDEX ix_access_assignment_access_attribute_id on access_assignment(access_attribute_id);
