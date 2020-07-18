INSERT INTO system_procs VALUES 

-- Example: /usr/bin/sh
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  1000, -- pid a.k.a. process id
  '/usr/bin/sh a b c' -- name
),

-- Example: ~/bin/app
(
  '', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  1001, -- pid a.k.a. process id
  '~/bin/app x y x' -- name
);
