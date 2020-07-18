INSERT INTO plan_smarts VALUES 

-- Example: Alpha
(
  '4b5416a03e89ac786eb04c7721cf9998', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Alpha Specific', -- specific
  'Alpha Measurable', -- measurable
  'Alpha Actionable', -- actionable
  'Alpha Relevant', -- relevant
  'Alpha Timely' -- timely
),

-- Example: Bravo
(
  '13eded0e3d35e179945d282a9885ae9a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Bravo Specific', -- specific
  'Bravo Measurable', -- measurable
  'Bravo Actionable', -- actionable
  'Bravo Relevant', -- relevant
  'Bravo Timely' -- timely
);
