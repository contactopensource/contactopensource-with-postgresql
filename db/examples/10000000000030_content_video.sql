INSERT INTO content_videos VALUES 

-- Example: Alpha
(
  '60fd03c60f80a7191afa3d2823980d31', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Alpha', -- name
  60 -- duration_as_seconds
),

-- Example: Bravo
(
  'b47c2b0e701630e4e5ce98f6316f07db', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Bravo' -- name
  60 -- duration_as_seconds
);
