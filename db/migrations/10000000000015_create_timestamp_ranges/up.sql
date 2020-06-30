CREATE TABLE timestamp_ranges (
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
  start timestamp, -- example: 2020-01-01T00:00:00 and in any timezone
  stop timestamp -- example: 2030-01-01T00:00:00 and in any timezone
);

-- Programming-related
CREATE INDEX ix_timestamp_ranges_tenant_id on timestamp_ranges(tenant_id);
CREATE INDEX ix_timestamp_ranges_type_uri on timestamp_ranges(type_uri);
CREATE INDEX ix_timestamp_ranges_type_name on timestamp_ranges(type_name);
CREATE INDEX ix_timestamp_ranges_state_uri on timestamp_ranges(state_uri);
CREATE INDEX ix_timestamp_ranges_state_name on timestamp_ranges(state_name);

-- Update-related
CREATE INDEX ix_timestamp_ranges_updated_at_timestamp_utc on timestamp_ranges(updated_at_timestamp_utc);
CREATE INDEX ix_timestamp_ranges_updated_at_clock_count on timestamp_ranges(updated_at_clock_count);
CREATE INDEX ix_timestamp_ranges_updated_by_text on timestamp_ranges(updated_by_text);

-- General-related
CREATE INDEX ix_timestamp_ranges_start on timestamp_ranges(start);
CREATE INDEX ix_timestamp_ranges_stop on timestamp_ranges(stop);
