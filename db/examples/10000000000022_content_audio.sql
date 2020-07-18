INSERT INTO content_audios VALUES 

-- Example: Alpha
(
  '11536713b39e1eeddab7f7cd95c2ee34', -- id
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
  '11536713b39e1eeddab7f7cd95c2ee34', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Bravo', -- name
  60 -- duration_as_seconds
);
