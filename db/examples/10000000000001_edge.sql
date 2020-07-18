INSERT INTO edges VALUES 

-- Exampe: Edge alpha -> bravo -> charlie
(
  '264b87a8f92fdbd265f4b5543f829cc2', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Subject
  'http://example.com/alpha.html', -- subject_uri
  'example_database_1', -- subject_database
  'example_schema_1', -- subject_schema
  'example_table_1',  -- subject_table
  '694492e037227acf0a264d235f18d1e9', -- subject_id

  -- Predicate
  'http://example.com/bravo.html', -- predicate_uri
  'example_database_2', -- predicate_database
  'example_schema_2', -- predicate_schema
  'example_table_2',  -- predicate_table
  '694492e037227acf0a264d235f18d1e9', -- predicate_id

  -- Object
  'http://example.com/charlie.html', -- object_uri
  'example_database', -- object_database
  'example_schema', -- object_schema
  'example_table',  -- object_table
  '694492e037227acf0a264d235f18d1e9', -- object_id

  -- Lifecycle
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- start_at_timestamp_utc
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- stop_at_timestamp_utc

  -- Modifiers
  8, -- count
  8.8, -- weight
  0.8 -- unit_interval
  -0.8 -- dual_interval

);
