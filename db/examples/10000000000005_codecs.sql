INSERT INTO codecs VALUES 

-- Example: MP3 https://en.wikipedia.org/wiki/MP3
(
  CAST('fdec49e3a4cd69941d76d960201cc829' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Group-related
  null, -- set_id
  null, -- parent_id

  -- Codec-related
  'MP3 audio', -- name
  'mp3', -- code
  'https://example.com/mp3.png', --  icon
  'https://example.com/mp3', -- link
  'MP3 is the most popular audio codec worldwide', -- note
  'Fraunhofer Society', -- creator_name
  'mp3', -- prefer_file_extension
  null, -- prefer_media_type_id e.g. 'audio/mp3'
  true, -- lossy_flag
  true, -- floss_flag
  22000, -- bit_rate
  null, -- bit_rate_minimum
  null, -- bit_rate_maximum
  false, -- variable_bit_rate_flag
  2, -- channel_count
  null, -- channel_count_minimum
  null, -- channel_count_maximum
  false -- variable_channel_count_flag
),

-- Example: Ogg Vorbis
(
  CAST('7979757b4a62cb375ab6b6eaa0696b41' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Group-related
  null, -- set_id
  null, -- parent_id

  -- Codec-related
  'Ogg Vorbis', -- name
  'ogg', -- code
  'https://example.com/ogg.png', --  icon
  'https://example.com/ogg', -- link
  'Ogg Vorbis is a free libre open source code', --
  'Xiph', -- creator_name
  'ogg', -- prefer_file_extension
  null, -- prefer_media_type_id e.g. 'audio/ogg'
  true, -- lossy_flag
  true, -- floss_flag
  22000, -- bit_rate
  11000, -- bit_rate_minimum
  44000, -- bit_rate_maximum
  true, -- variable_bit_rate_flag
  2, -- channel_count
  1, -- channel_count_minimum
  6, -- channel_count_maximum
  true -- variable_channel_count_flag
);
