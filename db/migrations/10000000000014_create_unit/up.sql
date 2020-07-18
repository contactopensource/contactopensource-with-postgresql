CREATE TABLE unit (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Tag-related
  name text, -- example: 'second'
  symbol text -- example: 's'
);

-- Metadata
CREATE INDEX ix_unit_updated_at_timestamp_utc on unit(updated_at_timestamp_utc);
CREATE INDEX ix_unit_updated_at_clock_count on unit(updated_at_clock_count);
CREATE INDEX ix_unit_tenant_id on unit(tenant_id);
CREATE INDEX ix_unit_parent_id on unit(parent_id);
CREATE INDEX ix_unit_set_id on unit(set_id);
CREATE INDEX ix_unit_type_id on unit(type_id);
CREATE INDEX ix_unit_state_id on unit(state_id);

-- General-related
CREATE INDEX ix_unit_singular on unit(name);
CREATE INDEX ix_unit_plural on unit(name);
CREATE INDEX ix_unit_symbol on unit(symbol);
