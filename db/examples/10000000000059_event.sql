INSERT INTO events VALUES 

-- Example: TODO
(
  '57b46319b658bede4bd04b1c66b386e7', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Name-related
  'Lunch', -- name

  -- Lifetime-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start_timestamp_utc
  TO_TIMESTAMP('2030-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- stop_timestamp_utc
  8888 -- duration_in_seconds
),

-- Example: TODO
(
  'd05a9b4ca8785e992eb6ae1a3ce25e8a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Name-related
  'Lunch', -- name

  -- Lifetime-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start_timestamp_utc
  TO_TIMESTAMP('2030-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- stop_timestamp_utc
  8888 -- duration_in_seconds
);

