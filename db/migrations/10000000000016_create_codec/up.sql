
-- Codecs for encoding/decoding data, such as audio, image, video.
--
-- See https://en.wikipedia.org/wiki/Codec
-- See https://en.wikipedia.org/wiki/List_of_codecs
--
CREATE TABLE codec (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Codec-related
  set_id text,
  parent_id text,
  name text, -- example: "Ogg Vorbis Compressed Audio"
  code text, -- example: "ogg"
  icon text, -- example: https://example.com/image.jpg
  link text, -- example: https://en.wikipedia.org/wiki/Ogg
  note text, -- example: "Open source patent free"
  creator_name text, -- example: "Xiph"
  prefer_file_extension text, -- example: "ogg"
  prefer_media_type_id text, -- example: audio/ogg
  lossy boolean, -- example: true means lossy encoding; false means lossless encoding
  floss boolean, -- example: true means free libre open source
  fixed_bit_rate decimal, -- example: 22000 means 23000 samples per second
  variable_bit_rate_minimum decimal, -- example: 11000 means 11000 samples per second minimum
  variable_bit_rate_maximum decimal, -- example: 44000 means 44000 samples per second maximum
  fixed_channel_count integer, -- example: 2 channel audio tyipcally means stereophonic
  variable_channel_count_minimum integer, -- example: 1 channel audio typically means monophonic
  variable_channel_count_maximum integer, -- example: 5 channel audio typically means surround sound
);

-- Metadata
CREATE INDEX ix_codec_updated_at_timestamp_utc on codec(updated_at_timestamp_utc);
CREATE INDEX ix_codec_updated_at_clock_count on codec(updated_at_clock_count);
CREATE INDEX ix_codec_tenant_id on codec(tenant_id);
CREATE INDEX ix_codec_parent_id on codec(parent_id);
CREATE INDEX ix_codec_set_id on codec(set_id);
CREATE INDEX ix_codec_type_id on codec(type_id);
CREATE INDEX ix_codec_state_id on codec(state_id);

-- Codec-related
CREATE INDEX ix_codec_name on codec(name);
CREATE INDEX ix_codec_code on codec(code);
CREATE INDEX ix_codec_prefer_file_extension on codec(prefer_file_extension);
CREATE INDEX ix_codec_prefer_media_type_id on codec(prefer_media_type_id);
CREATE INDEX ix_codec_lossy on codec(lossy);
CREATE INDEX ix_codec_floss on codec(floss);
