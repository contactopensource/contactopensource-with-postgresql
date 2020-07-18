INSERT INTO media_types VALUES 

-- Example: text/plain + ASCII
(
  'bb40d818933e8e525d54d6cea27d573e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Media-related
  'text/plain;charset=ASCII;boundary=alpha', -- text
  'text', -- supertype
  'html', -- subtype
  '', -- tree
  '', -- suffix
  array['charset=ASCII', 'boundary=alpha'] -- parameters

),

-- Example: application/json + UTF-8
(
  'bf029cf3b57788687fe5b0823c80e901', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Media-related
  'application/x.example+json;charset=UTF-8;boundary=something', -- text
  'application', -- supertype
  'example', -- subtype
  'x.', -- tree
  '+json', -- suffix
  array['charset=UTF-16', 'boundary=bravo'] -- parameters

);

