CREATE TABLE event (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- General-related
  name text, -- example: 'Acme Agency'

  -- Lifetime-related
  start_timestamp_utc timestamp, --  example: 2020-01-01T00:00:00 always UTC
  stop_timestamp_utc timestamp, --  example: 2020-01-01T00:00:00 always UTC
  duration_as_seconds numeric(20,9) -- example: 3600 seconds is 1 hour

);

-- Metadata

-- General-related
CREATE INDEX ix_event_name on event(name);

-- Lifetime-related
CREATE INDEX ix_event_start_timestamp_utc on event(start_timestamp_utc);
CREATE INDEX ix_event_stop_timestamp_utc on event(stop_timestamp_utc);
CREATE INDEX ix_event_duration_as_seconds on event(duration_as_seconds);
