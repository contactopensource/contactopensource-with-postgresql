-- Currency type
CREATE TABLE currency_type (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Media-related
  name text, -- example: 'United States Dollar'
  code text, -- example: 'USD'
  symbol text -- example '$'
);

-- Metadata
CREATE INDEX ix_currency_type_updated_at_timestamp_utc on currency_type(updated_at_timestamp_utc);
CREATE INDEX ix_currency_type_updated_at_clock_count on currency_type(updated_at_clock_count);
CREATE INDEX ix_currency_type_tenant_id on currency_type(tenant_id);
CREATE INDEX ix_currency_type_parent_id on currency_type(parent_id);
CREATE INDEX ix_currency_type_set_id on currency_type(set_id);
CREATE INDEX ix_currency_type_type_id on currency_type(type_id);
CREATE INDEX ix_currency_type_state_id on currency_type(state_id);

-- Media-related
CREATE INDEX ix_currency_type_name on currency_type(name);
CREATE INDEX ix_currency_type_code on currency_type(code);
CREATE INDEX ix_currency_type_symbol on currency_type(symbol);
