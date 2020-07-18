INSERT INTO codecs VALUES 

-- Example: MP3 https://en.wikipedia.org/wiki/MP3
(
  'fdec49e3a4cd69941d76d960201cc829', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

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
  22000, -- fixed_bit_rate
  null, -- variable_bit_rate_minimum
  null, -- variable_bit_rate_maximum
  2, -- fixed_channel_count
  null, -- variable_channel_count_minimum
  null -- variable_channel_count_maximum
),

-- Example: Ogg Vorbis
(
  '7979757b4a62cb375ab6b6eaa0696b41', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

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
  22000, -- fixed_bit_rate
  11000, -- variable_bit_rate_minimum
  44000, -- variable_bit_rate_maximum
  2, -- fixed_channel_count
  1, -- variable_channel_count_minimum
  6 -- variable_channel_count_maximum
);
