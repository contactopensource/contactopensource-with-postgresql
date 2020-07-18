INSERT INTO nodes VALUES 

-- Example: Alice
(
  'c9d5a052adab471f2d0e63054a535793', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Content-related
  'https://example.com/alice.html', -- uri
  'Alice', -- text
  '{"node": "Alice"}', -- json
  '<?xml version="1.0"?><node>Alice</node>', -- xml
  1111.1111 -- number

),

-- Example: Bob
(
  '88f9eba69345b623bafcc2a50e53f2f8', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Meta-related -- the intent is to describe the content fields below.
  'https://example.com/bob.html', -- uri

  -- Content-related - the intent is to offer a variety of database types.
  'Bob', -- text
  '{"node": "Bob"}', -- json
  '<?xml version="1.0"?><node>Bob</node>', -- xml
  2222.2222 -- number

);
