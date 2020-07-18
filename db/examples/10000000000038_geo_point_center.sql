INSERT INTO geo_point_centers VALUES

-- Example: New York, Grand Central, spread of 1 kilometer
(
  'd4677d7c8f7b034c9ba331087097ed6b', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  'c8fb5187e718484eefb9e8dceef4cd68', --  geo_point_id of New York Grand Central
  1000 -- spread_as_meters of 1 kilometer
),

-- Example: San Francisco, Ferry Building, spread of 1 kilometer
(
  '4b74e5d7848af524199f26ecf7348718', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  '6e7e03c894c96caeee4719e3dcccd339', -- geo_point_id id of San Francisco Ferry Building
  1000 -- spread_as_meters of 1 kilometer
);
