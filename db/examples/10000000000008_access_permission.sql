INSERT INTO access_permissions VALUES 

-- Example: reader can read
(
  '9c243b1aba60380a7213a5671b46399d', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'c660968b91b2f3d28f807f56f401f8e5', -- access_attribute_id of reader
  'a6e90c31d70034eef6d54b90438c9ced' -- access_operation_id of reader
),

-- Example: 
(
  'd99e5ce71220ee36692a4ac053451ebc', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  '03d5e4a193c53d7a5cb47f1b4055c8d2', -- access_attribute_id of writer
  '8de9b2d771ea7be28667f425c16e293f' -- access_operation_id of writer
);