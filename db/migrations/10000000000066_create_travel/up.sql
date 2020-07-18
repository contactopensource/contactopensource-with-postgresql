CREATE TABLE travel (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- General-related
  title text, -- example: 'Grand Central in New York City'
  subtitle text, -- example: 'Transportation hub in Midtown Manhattan'
  summary text, -- example:'Grand Central is a world-famous landmark and transportation hub in Midtown Manhattan.'
  saga text -- example: 'Grand Central's rich history is a story of great engineering, survival, and rebirth.'
);

-- Metadata
CREATE INDEX ix_travel_updated_at_timestamp_utc on travel(updated_at_timestamp_utc);
CREATE INDEX ix_travel_updated_at_clock_count on travel(updated_at_clock_count);
CREATE INDEX ix_travel_tenant_id on travel(tenant_id);
CREATE INDEX ix_travel_parent_id on travel(parent_id);
CREATE INDEX ix_travel_set_id on travel(set_id);
CREATE INDEX ix_travel_type_id on travel(type_id);
CREATE INDEX ix_travel_state_id on travel(state_id);

-- General-related
CREATE INDEX ix_travel_title on travel(title);
