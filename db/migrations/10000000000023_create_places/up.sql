CREATE TABLE places (
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

  -- General-related
  name text -- example: 'Grand Central in New York City'

);

-- Programming-related
CREATE INDEX ix_places_tenant_id on places(tenant_id);
CREATE INDEX ix_places_type_uri on places(type_uri);
CREATE INDEX ix_places_type_name on places(type_name);
CREATE INDEX ix_places_state_uri on places(state_uri);
CREATE INDEX ix_places_state_name on places(state_name);

-- Update-related
CREATE INDEX ix_places_updated_at_timestamp_utc on places(updated_at_timestamp_utc);
CREATE INDEX ix_places_updated_at_clock_count on places(updated_at_clock_count);
CREATE INDEX ix_places_updated_by_text on places(updated_by_text);

-- General-related
CREATE INDEX ix_places_name on places(name);
