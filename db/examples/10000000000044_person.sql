INSERT INTO persons VALUES 

-- Example: Alice
(
  'cc1143129505d87f5f0a044b7dbef236', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD HH24:MI:SS'), -- birth_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD HH24:MI:SS') -- death_date
),

-- Example: Bob
(
  '0f8a222d89c986b4a95ad60a55fad6e6', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD HH24:MI:SS'), -- birth_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD HH24:MI:SS') -- death_date
);
