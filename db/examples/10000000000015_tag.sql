-- A tag can be a simple hashtag word.
--
-- Examples:
--
--   * "newyork" is our example hashtag for New York
--
--   * "sanfrancisco" is our example hashtag for San Francisco
--
-- A tag can be a geographic code for a place.
--
-- Codes:
--
--   * [Open Location Code](https://plus.codes)
--
--   * [What3Words](https://what3words.com)
--
--   * [WhatFreeWords](https://whatfreewords.org)
--
-- Places:
--
--   * New York Grand Central
--
--   * San Francisco Ferry Building
--
INSERT INTO tags VALUES 

-- Example: New York
(
  '353fc6f3bfc3c56a5a687f9a986af0da', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Tag-related
  '6a8c63f0505bb15f17f13ecc0265f450', -- set_id for Twitter
  NULL, -- parent_id
  'newyork' -- text
),

-- Example: San Francisco
(
  '3bb2085aa5bce9506452fe8ebb9d0103', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Tag-related
  '6a8c63f0505bb15f17f13ecc0265f450', -- set_id for Twitter
  NULL, -- parent_id
  'sanfrancisco' -- text
),

-- Example: Grand Central, New York, NY, US + Open Location Code
(
  '6e8e948d776612ddec233f65f6722324', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  '03d0ca793b075f06f2fb6eb41084abd5', -- set_id for Open Location Code
  NULL, -- parent_id
  '87G8Q23F+34', -- text
  'Grand Central, New York, NY, US + Open Location Code' -- description
),

-- Example: Grand Central, New York, NY, US + What3Words
(
  'c2d3cea54d44a64ad5093c5aaa7076ae', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  'b712df2becc88dcb7201572e1bbc0980', -- set_id for What3Words
  NULL, -- parent_id
  'rubble.occurs.holds', -- text
  'Grand Central, New York, NY, US + What3Words' -- description
),

-- Example: Grand Central, New York, NY, US + WhatFreeWords
(
  '6e832771f5f844deabce47ebbfc8eba0', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  'fb126177afe10f5dbe512449a81df9f3', -- set_id for WhatFreeWords
  NULL, -- parent_id
  'burst.fully.things', -- text
  'Grand Central, New York, NY, US + WhatFreeWords' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + Open Location Code
(
  '7fd5e5969b5a69ce1149263854a868e8', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  '03d0ca793b075f06f2fb6eb41084abd5', -- set_id for Open Location Code
  NULL, -- parent_id
  '849VQJW4+6M', -- text
  'Ferry Building, San Francisco, CA, US + Open Location Code' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + What3Words
(
  '96832a0db64a21acf88fa619ce08b93a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  'b712df2becc88dcb7201572e1bbc0980', -- set_id for What3Words
  NULL, -- parent_id
  'banks.issues.socket', -- text
  'Ferry Building, San Francisco, CA, US + What3Words' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + WhatFreeWords
(
  '4a7b52bd2ec81616100990b38fa6fcc6', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Code-related
  'fb126177afe10f5dbe512449a81df9f3', -- set_id for WhatFreeWords
  NULL, -- parent_id
  'solid.cracks.solar', -- text
  'Ferry Building, San Francisco, CA, US + WhatFreeWords' -- description
);
