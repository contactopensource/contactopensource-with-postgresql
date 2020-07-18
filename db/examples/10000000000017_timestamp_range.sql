INSERT INTO date_time_ranges VALUES 

-- Example: one hour
(
  'd1e6f8124492cf2a0597cdb8bc059017', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Range-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start_as_timestamp_utc
  TO_TIMESTAMP('2020-01-01 01:00:00', 'YYYY-MM-DD HH24:MI:SS') -- stop_as_timestamp_utc
),

-- Example: one decade
(
  '09abfecdd7ce436a6012e6045f0aaa96', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Range-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start
  TO_TIMESTAMP('2030-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') -- stop
);
