CREATE TABLE date_time_ranges (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  typecast text, -- for optional single table inheritance
  state text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Range-related
  start_as_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  stop_as_timestamp_utc timestamp -- example: 2030-01-01T00:00:00 always UTC

);

-- Programming-related
CREATE INDEX ix_date_time_ranges_tenant_id on date_time_ranges(tenant_id);
CREATE INDEX ix_date_time_ranges_typecast on date_time_ranges(typecast);
CREATE INDEX ix_date_time_ranges_state on date_time_ranges(state);

-- Update-related
CREATE INDEX ix_date_time_ranges_updated_at_timestamp_utc on date_time_ranges(updated_at_timestamp_utc);
CREATE INDEX ix_date_time_ranges_updated_at_clock_count on date_time_ranges(updated_at_clock_count);
CREATE INDEX ix_date_time_ranges_updated_by_text on date_time_ranges(updated_by_text);

-- Geo-related
CREATE INDEX ix_date_time_ranges_start_as_timestamp_utc on date_time_ranges(start_as_timestamp_utc);
CREATE INDEX ix_date_time_ranges_stop_as_timestamp_utc on date_time_ranges(stop_as_timestamp_utc);
