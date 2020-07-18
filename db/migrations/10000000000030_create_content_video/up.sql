CREATE TABLE content_video (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text, -- example: "Video MP4"
  codec_id text, -- example: "video/mp4"
  duration_as_seconds decimal -- example: 60 seconds
);

-- Metadata
CREATE INDEX ix_content_video_updated_at_timestamp_utc on content_video(updated_at_timestamp_utc);
CREATE INDEX ix_content_video_updated_at_clock_count on content_video(updated_at_clock_count);
CREATE INDEX ix_content_video_tenant_id on content_video(tenant_id);
CREATE INDEX ix_content_video_parent_id on content_video(parent_id);
CREATE INDEX ix_content_video_set_id on content_video(set_id);
CREATE INDEX ix_content_video_type_id on content_video(type_id);
CREATE INDEX ix_content_video_state_id on content_video(state_id);

-- Media-related
CREATE INDEX ix_content_video_name on content_video(name);
CREATE INDEX ix_content_video_codec_id on content_video(codec_id);
CREATE INDEX ix_content_video_duration_as_seconds on content_video(_duration_as_seconds);
