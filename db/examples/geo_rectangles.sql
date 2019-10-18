INSERT INTO geo_rectangles VALUES 

-- Example: New York, Grand Central, delta -/+ 0.1 latitude/longitude
(
  CAST('353fc6f3bfc3c56a5a687f9a986af0da' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  CAST('d3ef3da36e8e835a464b51b00ae9a827' as uuid), -- geo_point id of New York Grand Central, delta -0.1 latitude, -0.1 longitude
  CAST('17c3d2697fea9eeeca776f855b69b394' as uuid) -- geo_point id of New York Grand Central, delta +0.1 latitude, +0.1 longitude
),

-- Example: San Francisco, Ferry Building, delta -/+ 0.1 latitude/longitude
(
  CAST('e809d4983199ea8f89f2915846e8ab9c' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  CAST('dffa13312090a7966cc05af0bcecebc4' as uuid), -- geo_point id of San Francisco Ferry Building, delta -0.1 latitude, -0.1 longitude
  CAST('a93526cc717f3bc83e32ed2e74d1fc85' as uuid) -- geo_point id of San Francisco Ferry Building, delta +0.1 latitude, +0.1 longitude
);

