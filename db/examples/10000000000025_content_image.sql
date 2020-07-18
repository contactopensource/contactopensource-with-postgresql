INSERT INTO content_images VALUES 

-- Example: Alpha
(
  'eb552616c3c0b3d04fc2ea4a9c793092', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Alpha', -- name
  100, -- width_as_pixels
  100 -- height_as_pixels
),

-- Example: Bravo
(
  'ce7b9447a021c8918e6fa6f29214f823', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Bravo' -- name
  100, -- width_as_pixels
  100 -- height_as_pixels
);
