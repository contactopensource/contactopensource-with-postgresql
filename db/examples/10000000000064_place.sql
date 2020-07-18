INSERT INTO places VALUES 

-- New York + Grand Central
(
  'a1b32e52b344acb5187b1749c6697982', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Place-related
  'Grand Central', -- name
  'Grand Central Terminal', -- title
  'Transportation hub in New York City', -- subtitle
  'Grand Central is a world-famous landmark and transportation hub in Midtown Manhattan.', -- summary
  'Grand Central''s rich history is a story of great engineering, survival, and rebirth.', -- saga

  -- Postal contact:
  -- 'Grand Central', -- addressee
  -- '89 E 42nd St', -- street_address
  -- 'Master''s Office', -- premise_address
  -- 'New York', -- locality_name
  -- 'NY', -- region_code
  -- '10017', -- postal_code
  -- 'US', -- country_code
  -- 'NA', -- continent_code
  -- 'Midtown', -- neighborhood_name

  -- Phone: 1 (212) 340-2583 = Master's Office

  -- Geo point:
  -- 40.752687, -- latitude
  -- -73.977188, -- longitude

  -- Geo codes:
  -- '87G8Q23F+34', -- https://plus.codes
  -- 'rubble.occurs.holds', -- What3Words.com
  -- 'burst.fully.things', -- WhatFreeWords.org
  -- TODO -- global location number
),

-- San Francisco + Ferry Building
(
  '650044c3f694a056d370ad88dc75aa7b', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  'SFFB', -- name
  'San Francisco Ferry Building', -- title
  'Transportation terminal, food hall, and office building', -- subtitle
  'The San Francisco Ferry Building is a ferry terminal, food hall, and office building.', -- summary
  'The San Francisco Ferry Building was completed in 1898 and designed in the Beaux Arts style.', -- saga

  -- Postal contact:
  -- 'Ferry Building', -- addressee
  -- '1 Ferry Building', -- street_address
  -- 'Lost & Found', -- premise_address
  -- 'San Francisco', -- locality_name
  -- 'CA', -- region_code
  -- '94111', -- postal_code
  -- 'US', -- country_code
  -- 'NA', -- continent_code
  -- 'Downtown', -- neighborhood_name

  -- Phone:  1 (415) 983-8007 = Lost & Found

  -- Geo point:
  -- 37.795563, -- latitude
  -- -122.393312, -- longitude

  -- Geo codes:
  -- '849VQJW4+6M', -- https://plus.codes
  -- 'banks.issues.socket', -- https://what3words.com
  -- 'solid.cracks.solar', -- https://whatfreewords.org
  -- TODO -- global location number
),

-- New York + Public Library
(
  'c1346940d621bb901eb2ea3f904f5229', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  'NYPL', -- name
  'New York Public Library Main Branch', -- title
  'Provider of books, ideas, education, and civic services', -- subtitle
  'New York Public Library (NYPL) Main Branch is in New York City in Midtown Manhattan.', -- summary
  'New York Public Library (NYPL) is an essential provider for all New Yorkers for more than 100 years.' --saga
  
  -- Postal contact:
  -- 'NYPL', -- addressee
  -- '', -- street_address
  -- '', -- premise_address
  -- 'New York', -- locality_name
  -- 'NY', -- region_code
  -- '', -- postal_code
  -- 'US', -- country_code
  -- 'NA', -- continent_code
  -- 'Downtown', -- neighborhood_name

  -- Phone:  1 (415) ???-???? = ?

  -- Geo point:
  -- , -- latitude
  -- , -- longitude

  -- Geo codes:
  -- '', -- https://plus.codes
  -- '', -- https://what3words.com
  -- '', -- https://whatfreewords.org
  -- TODO -- global location number
),

-- San Francisco + Public Library
(
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  'Public Library in San Francisco', -- title
  'The San Francisco Public Library Main Library at Civic Center', -- subtitle
  'The Main Library is located at Civic Center at 100 Larkin Street.', -- summary
  'In August 1877 a residents'' meeting was called to create a free public library for San Francisco.' -- saga

  -- Postal contact:
  -- 'SFPL', -- addressee
  -- '', -- street_address
  -- '', -- premise_address
  -- 'San Francisco', -- locality_name
  -- 'CA', -- region_code
  -- '', -- postal_code
  -- 'US', -- country_code
  -- 'NA', -- continent_code
  -- 'Downtown', -- neighborhood_name

  -- Phone:  1 (415) ???-???? = ?

  -- Geo point:
  -- , -- latitude
  -- , -- longitude

  -- Geo codes:
  -- '', -- https://plus.codes
  -- '', -- https://what3words.com
  -- '', -- https://whatfreewords.org
  -- TODO -- global location number
),

-- North Pole
(
  'decb4d70ba8fe75f5a40d99bc884a1fd', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  'North Pole', -- title,
  '', -- subtitle
  '', -- summary
  '' -- saga

  -- Postal contact:
  -- '', -- addressee
  -- '', -- street_address
  -- '', -- premise_address
  -- '', -- locality_name
  -- '', -- region_code
  -- '', -- postal_code
  -- '', -- country_code
  -- '', -- continent_code
  -- '', -- neighborhood_name

  -- Phone:  ? = ?

  -- Geo point:
  -- , -- latitude
  -- , -- longitude

  -- Geo codes:
  -- '', -- https://plus.codes
  -- '', -- https://what3words.com
  -- '', -- https://whatfreewords.org
  -- '', -- global location number
),

-- South Pole
(
  '3263f3d7175b51d3365e7f40d32ab654', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  'South Pole', -- name
  '', -- subtitle
  '', -- summary
  '' -- saga

  -- Postal contact:
  -- '', -- addressee
  -- '', -- street_address
  -- '', -- premise_address
  -- '', -- locality_name
  -- '', -- region_code
  -- '', -- postal_code
  -- '', -- country_code
  -- '', -- continent_code
  -- '', -- neighborhood_name

  -- Phone:  ? = ?

  -- Geo point:
  -- , -- latitude
  -- , -- longitude

  -- Geo codes:
  -- '', -- https://plus.codes
  -- '', -- https://what3words.com
  -- '', -- https://whatfreewords.org
  -- '', -- global location number
);
