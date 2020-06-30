CREATE TABLE units (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  type_uri text, -- for optional type reference
  type_name text, -- for optional single table inheritance
  state_uri text, -- for optional state reference
  state_name text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Tag-related
  singular text, -- example: 'second'
  plural text, -- example: 'seconds'
  symbol text -- example: 's'
);

-- Programming-related
CREATE INDEX ix_units_tenant_id on units(tenant_id);
CREATE INDEX ix_units_type_uri on units(type_uri);
CREATE INDEX ix_units_type_name on units(type_name);
CREATE INDEX ix_units_state_uri on units(state_uri);
CREATE INDEX ix_units_state_name on units(state_name);

-- Update-related
CREATE INDEX ix_units_updated_at_timestamp_utc on units(updated_at_timestamp_utc);
CREATE INDEX ix_units_updated_at_clock_count on units(updated_at_clock_count);
CREATE INDEX ix_units_updated_by_text on units(updated_by_text);

-- General-related
CREATE INDEX ix_units_singular on units(name);
CREATE INDEX ix_units_plural on units(name);
CREATE INDEX ix_units_symbol on units(symbol);
