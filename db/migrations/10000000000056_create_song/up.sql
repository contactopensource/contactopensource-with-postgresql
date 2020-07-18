CREATE TABLE song (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text, -- example: "Hello"
  album_id text, -- example: "25"
  artist_id text, -- example: Adele
);

-- Metadata
CREATE INDEX ix_song_updated_at_timestamp_utc on song(updated_at_timestamp_utc);
CREATE INDEX ix_song_updated_at_clock_count on song(updated_at_clock_count);
CREATE INDEX ix_song_tenant_id on song(tenant_id);
CREATE INDEX ix_song_parent_id on song(parent_id);
CREATE INDEX ix_song_set_id on song(set_id);
CREATE INDEX ix_song_type_id on song(type_id);
CREATE INDEX ix_song_state_id on song(state_id);

-- Media-related
CREATE INDEX ix_song_name on song(name);
CREATE INDEX ix_song_album_id on song(album_id);
CREATE INDEX ix_song_artist_id on song(artist_id);
