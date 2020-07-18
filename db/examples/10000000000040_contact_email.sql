INSERT INTO contact_emails VALUES 

-- Example: Alice Adams <alice@example.com>
(
  'dc3200ef1e8066ab892964f9292cd15e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Email-related
  'Alice Adams <alice@example.com>', -- address
  'Alice Adams', -- display_name
  'alice@example.com' -- addr_spec
),

-- Example: Bob Brown <bob@example.com>
(
  '92543cb0d9829d78b6188c108e25be9e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Email-related
  'Bob Brown <bob@example.com>', -- address
  'Bob Brown', -- display_name
  'bob@example.com' -- addr_spec
);

