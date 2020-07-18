INSERT INTO access_assignments VALUES 

-- Example: Alice is a reader
(
  'ca375312f160f360776e282bc7496fd3', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'fe7be249c42875f0266db64da319f0b3', -- access_user_id of Alice
  'c660968b91b2f3d28f807f56f401f8e5' -- access_attribute_id of reader
),

-- Example: Bob is a writer
(
  '56085e439d26a31b72d73c4fa7e194cb', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'a31361f32f7137201bd7b1e6a0b37676', -- access_user_id of Bob
  '03d5e4a193c53d7a5cb47f1b4055c8d2' -- access_attribute_id of writer
);
