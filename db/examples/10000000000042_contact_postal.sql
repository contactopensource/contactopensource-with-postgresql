INSERT INTO contact_postals VALUES 

-- Example: New York + Grand Central
(
  'f10bf169bbc1df76dc18dd007e09581a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Postal-related
  'US', -- country_text
  'NY', -- region_text
  'New York', -- locality_text
  'Midtown', -- neighborhood_text
  '10017', -- postal_code_text
  '89 E 42nd St', -- street_address_text
  'Master''s Office', -- premise_address_text
  '1001710017' -- global_location_number_text (fake)
),

-- Example: San Francisco + Ferry Building
(
  'd819c808f9d6f7b8c3649657693b798b', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Postal-related
  'US', -- country_text
  'CA', -- region_text
  'San Francisco', -- locality_text
  'Downtown', -- neighborhood_text
  '94111', -- postal_code_text
  '1 Ferry Building', -- street_address_text
  'Lost & Found', -- premise_address_text
  '9411194111' -- global_location_number_text (fake)
);
