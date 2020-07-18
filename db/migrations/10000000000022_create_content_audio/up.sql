CREATE TABLE content_audio (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text, -- example: "Audio MP3"
  codec_id text, -- example: audio/mp3
  duration_as_seconds decimal -- example: 60 seconds
);

-- Metadata
CREATE INDEX ix_content_audio_updated_at_timestamp_utc on content_audio(updated_at_timestamp_utc);
CREATE INDEX ix_content_audio_updated_at_clock_count on content_audio(updated_at_clock_count);
CREATE INDEX ix_content_audio_tenant_id on content_audio(tenant_id);
CREATE INDEX ix_content_audio_parent_id on content_audio(parent_id);
CREATE INDEX ix_content_audio_set_id on content_audio(set_id);
CREATE INDEX ix_content_audio_type_id on content_audio(type_id);
CREATE INDEX ix_content_audio_state_id on content_audio(state_id);

-- Media-related
CREATE INDEX ix_content_audio_name on content_audio(name);
CREATE INDEX ix_content_audio_codec_id on content_audio(codec_id);
CREATE INDEX ix_content_audio_duration_as_seconds on content_audio(_duration_as_seconds);
