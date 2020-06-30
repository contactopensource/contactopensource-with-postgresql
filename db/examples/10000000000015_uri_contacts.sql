INSERT INTO uri_contacts VALUES 

-- Example: web page
(
  CAST('7140f28355dc507e9f3fa47075e051e7' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

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
  CAST('bfa376ca5a091e4e5bb69dc89f2edf1a' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

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
  CAST('2a7b687d89d02d308347c7a207de826e' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

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
  CAST('90aa301cc861104c2646c15c2e7db529' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Link-related
  'San Franciso Ferry Building', -- label
  'https://wikipedia.org/wiki/San_Francisco_Ferry_Building' -- uri
  'https', -- scheme
  '', -- authority
  'wikipedia.org/wiki/San_Francisco_Ferry_Building', -- path
  '', -- query
  '' -- fragment
);
