INSERT INTO persons VALUES 

-- Example: Alice
(
  CAST('cc1143129505d87f5f0a044b7dbef236' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD HH24:MI:SS'), -- birth_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD HH24:MI:SS') -- death_date

),

-- Example: Bob
(
  CAST('0f8a222d89c986b4a95ad60a55fad6e6' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD HH24:MI:SS'), -- birth_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD HH24:MI:SS') -- death_date

);
