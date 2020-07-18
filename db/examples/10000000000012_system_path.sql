INSERT INTO system_paths VALUES 

-- Example: /etc
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
  1000, -- inode id
  '/etc' -- name
),

-- Example: /etc/environment
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
  1001, -- inode id
  '/etc/environment' -- name
);
