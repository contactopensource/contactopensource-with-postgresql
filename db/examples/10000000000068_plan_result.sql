INSERT INTO plan_results VALUES 

-- Example: Alpha
(
  '5f2ca54ede81606e67cce192a56ae9a3', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Alpha' -- name
),

-- Example: Bravo
(
  '67e5f39b9de68aaaa1c1c5a8a781f336', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'name' -- text
);
