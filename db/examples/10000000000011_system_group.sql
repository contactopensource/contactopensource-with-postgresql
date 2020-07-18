INSERT INTO system_groups VALUES 

-- Example: Alice
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  'directory', -- type_id
  '', -- state_id

  -- Main
  1000, -- gid a.k.a. group id
  'administrators' -- name a.k.a. group name
),

-- Example: Bob
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  'file', -- type_id
  '', -- state_id

  -- Main
  1001, -- gid a.k.a. group id
  'staff' -- name a.k.a. group name
);
