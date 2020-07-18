INSERT INTO contact_uris VALUES 

-- Example: web page
(
  '7140f28355dc507e9f3fa47075e051e7', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- URI-related
  'Example web page'
  'http://example.com/index.html?a=b&c=d#e', -- text
  'http', -- scheme
  '', -- authority
  'example.com/index.html', -- path
  'a=b&c=d', -- query
  'e' -- fragment
),

-- Example: text file
(
  'bfa376ca5a091e4e5bb69dc89f2edf1a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- URI-related
  'Example text file', -- label
  'file://tmp/foo.txt', -- text
  'file', -- scheme
  '', -- authority
  'tmp/foo.txt', -- path
  '', -- query
  '' -- fragment
)

-- Example: New York + Grand Central + Wikipedia link
(
  '2a7b687d89d02d308347c7a207de826e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Link-related
  'New York Grand Central', -- label
  'https://wikipedia.org/wiki/Grand_Central_Terminal' -- uri
  'https', -- scheme
  '', -- authority
  'wikipedia.org/wiki/Grand_Central_Terminal', -- path
  '', -- query
  '' -- fragment
),

-- Example: San Francisco + Ferry Building + Wikipedia link
(
  '90aa301cc861104c2646c15c2e7db529', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Link-related
  'San Franciso Ferry Building', -- label
  'https://wikipedia.org/wiki/San_Francisco_Ferry_Building' -- uri
  'https', -- scheme
  '', -- authority
  'wikipedia.org/wiki/San_Francisco_Ferry_Building', -- path
  '', -- query
  '' -- fragment
);
