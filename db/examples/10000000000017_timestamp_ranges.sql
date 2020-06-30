INSERT INTO date_time_ranges VALUES 

-- Example: one hour
(
  CAST('d1e6f8124492cf2a0597cdb8bc059017' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Range-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start_as_timestamp_utc
  TO_TIMESTAMP('2020-01-01 01:00:00', 'YYYY-MM-DD HH24:MI:SS') -- stop_as_timestamp_utc
),

-- Example: one decade
(
  CAST('09abfecdd7ce436a6012e6045f0aaa96' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- typecast
  '', -- type_name
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Range-related
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start
  TO_TIMESTAMP('2030-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') -- stop
);
