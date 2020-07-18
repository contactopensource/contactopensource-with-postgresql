INSERT INTO contact_passports VALUES 

-- Example: Alice's passport
(
  '5c6122ea2ceab2a7374bf42095c6cd3e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Passport-related
  'US', -- country_text
  '111-111-111-111', -- number_text

  -- Time-related
  '2020-01-01', -- valid_start_date
  '2030-01-01' -- valid_stop_date
),

-- Example: Bob's passport
(
  'de2eac04da783ec19c713440e2147c75', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Passport-related
  'US', -- country_text
  '888-888-888-888', -- number_text

  -- Time-related
  '2020-01-01', -- valid_start_date
  '2030-01-01' -- valid_stop_date

);

