INSERT INTO geo_circles VALUES

-- Example: New York, Grand Central, radius 10 kilometers
(
  CAST('d4677d7c8f7b034c9ba331087097ed6b' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('c8fb5187e718484eefb9e8dceef4cd68' as uuid), --  center_as_geo_point_id of New York Grand Central
  10000
),

-- Example: San Francisco, Ferry Building, radius 10 kilometers
(
  CAST('4b74e5d7848af524199f26ecf7348718' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('6e7e03c894c96caeee4719e3dcccd339' as uuid), -- center_as_geo_point_id id of San Francisco Ferry Building
  10000
);
