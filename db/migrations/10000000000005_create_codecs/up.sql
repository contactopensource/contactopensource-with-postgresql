
-- Codecs for encoding/decoding data, such as audio, image, video.
--
-- See https://en.wikipedia.org/wiki/Codec
-- See https://en.wikipedia.org/wiki/List_of_codecs
--
CREATE TABLE codecs (
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

  -- Codec-related
  set_id uuid,
  parent_id uuid,
  name text, -- example: "Ogg Vorbis Compressed Audio"
  code text, -- example: "ogg"
  icon text, -- example: https://example.com/image.jpg
  link text, -- example: https://en.wikipedia.org/wiki/Ogg
  note text, -- example: "Open source patent free"
  creator_name text, -- example: "Xiph"
  prefer_file_extension text, -- example: "ogg"
  prefer_media_type_id uuid, -- example: audio/ogg
  lossy boolean, -- example: true means lossy encoding; false means lossless encoding
  floss boolean, -- example: true means free libre open source
  bit_rate decimal, -- example: 22000 means 23000 samples per second
  bit_rate_minimum decimal, -- example: 11000 means 11000 samples per second minimum
  bit_rate_maximum decimal, -- example: 44000 means 44000 samples per second maximum
  variable_bit_rate boolean, -- example: true means variable bit rate; false means constant bit rate
  channel_count integer, -- example: 2 channel audio tyipcally means stereophonic
  channel_count_minimum integer, -- example: 1 channel audio typically means monophonic
  channel_count_maximum integer, -- example: 5 channel audio typically means surround sound
  variable_channel_count boolean -- example: true means variable channel count; false means constant channel count
);

-- Programming-related
CREATE INDEX ix_codecs_tenant_id on codecs(tenant_id);
CREATE INDEX ix_codecs_type_uri on codecs(type_uri);
CREATE INDEX ix_codecs_type_name on codecs(type_name);
CREATE INDEX ix_codecs_state_uri on codecs(state_uri);
CREATE INDEX ix_codecs_state_name on codecs(state_name);

-- Update-related
CREATE INDEX ix_codecs_updated_at_timestamp_utc on codecs(updated_at_timestamp_utc);
CREATE INDEX ix_codecs_updated_at_clock_count on codecs(updated_at_clock_count);
CREATE INDEX ix_codecs_updated_by_text on codecs(updated_by_text);

-- Codec-related
CREATE INDEX ix_codecs_name on codecs(name);
CREATE INDEX ix_codecs_code on codecs(code);
CREATE INDEX ix_codecs_prefer_file_extension on codecs(prefer_file_extension);
CREATE INDEX ix_codecs_prefer_media_type_id on codecs(prefer_media_type_id);
CREATE INDEX ix_codecs_lossy on codecs(lossy);
CREATE INDEX ix_codecs_floss on codecs(floss);
