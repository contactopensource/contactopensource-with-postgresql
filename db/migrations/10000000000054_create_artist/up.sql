CREATE TABLE artist (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- General-related
  title text, -- example: 'Adele'
  subtitle text, -- example: ''
  summary text, -- example: ''
  saga text -- example: 'Grand Central's rich history is a story of great engineering, survival, and rebirth.'
);

-- Metadata
CREATE INDEX ix_artist_updated_at_timestamp_utc on artist(updated_at_timestamp_utc);
CREATE INDEX ix_artist_updated_at_clock_count on artist(updated_at_clock_count);
CREATE INDEX ix_artist_tenant_id on artist(tenant_id);
CREATE INDEX ix_artist_parent_id on artist(parent_id);
CREATE INDEX ix_artist_set_id on artist(set_id);
CREATE INDEX ix_artist_type_id on artist(type_id);
CREATE INDEX ix_artist_state_id on artist(state_id);

-- General-related
CREATE INDEX ix_artist_title on artist(title);
