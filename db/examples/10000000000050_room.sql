INSERT INTO rooms VALUES 

-- Example: 
(
  '78365903b5c20aeebeb98170bf165341', -- id
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

-- Example: 
(
  'b4bd2acdf42a58f137c9f0e6ee305b7a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Bravo' -- name
);