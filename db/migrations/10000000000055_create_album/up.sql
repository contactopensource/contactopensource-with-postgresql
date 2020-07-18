CREATE TABLE album (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text, -- example: "25"
  artist_id text -- example: Adele
);

-- Metadata
CREATE INDEX ix_album_updated_at_timestamp_utc on album(updated_at_timestamp_utc);
CREATE INDEX ix_album_updated_at_clock_count on album(updated_at_clock_count);
CREATE INDEX ix_album_tenant_id on album(tenant_id);
CREATE INDEX ix_album_parent_id on album(parent_id);
CREATE INDEX ix_album_set_id on album(set_id);
CREATE INDEX ix_album_type_id on album(type_id);
CREATE INDEX ix_album_state_id on album(state_id);

-- Media-related
CREATE INDEX ix_album_name on album(name);
CREATE INDEX ix_album_artist_id on album(artist_id);
