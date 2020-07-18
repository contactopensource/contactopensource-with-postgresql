INSERT INTO geo_points VALUES 

-- New York Grand Central
(
  'c8fb5187e718484eefb9e8dceef4cd68', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  40.752687, -- latitude_as_decimal_degrees
  73.977188, -- longitude_as_decimal_degrees
  39.6, -- altitude_msl_as_meters
  39.6, -- altitude_agl_as_meters
  39.6, -- elevation_msl_as_meters
  39.6 -- elevation_agl_as_meters

),

-- New York Grand Central, delta -0.1 latitude, -0.1 longitude
(
  'd3ef3da36e8e835a464b51b00ae9a827', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  40.652687, -- latitude_as_decimal_degrees
  73.877188, -- longitude_as_decimal_degrees
  39.6, -- altitude_msl_as_meters
  39.6, -- altitude_agl_as_meters
  39.6, -- elevation_msl_as_meters
  39.6 -- elevation_agl_as_meters
),

-- New York Grand Central, delta +0.1 latitude, +0.1 longitude
(
  '17c3d2697fea9eeeca776f855b69b394', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  40.852687, -- latitude_as_decimal_degrees
  74.077188, -- longitude_as_decimal_degrees
  39.6, -- altitude_msl_as_meters
  39.6, -- altitude_agl_as_meters
  39.6, -- elevation_msl_as_meters
  39.6 -- elevation_agl_as_meters
),

-- San Francisco Ferry Building
(
  '6e7e03c894c96caeee4719e3dcccd339', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  37.795563, -- latitude_as_decimal_degrees
  -122.393312, -- longitude_as_decimal_degrees
  12.1, -- altitude_msl_as_meters
  12.1, -- altitude_agl_as_meters
  12.1, -- elevation_msl_as_meters
  12.1 -- elevation_agl_as_meters
),

-- San Francisco Ferry Building, delta -0.1 latitude, -0.1 longitude
(
  'dffa13312090a7966cc05af0bcecebc4', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  37.695563, -- latitude_as_decimal_degrees
  -122.293312, -- longitude_as_decimal_degrees
  12.1, -- altitude_msl_as_meters
  12.1, -- altitude_agl_as_meters
  12.1, -- elevation_msl_as_meters
  12.1 -- elevation_agl_as_meters
),

-- San Francisco Ferry Building, delta +0.1 latitude, +0.1 longitude
(
  'a93526cc717f3bc83e32ed2e74d1fc85', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Geo-related
  37.805563, -- latitude_as_decimal_degrees
  -122.493312, -- longitude_as_decimal_degrees
  12.1, -- altitude_msl_as_meters
  12.1, -- altitude_agl_as_meters
  12.1, -- elevation_msl_as_meters
  12.1 -- elevation_agl_as_meters
);
