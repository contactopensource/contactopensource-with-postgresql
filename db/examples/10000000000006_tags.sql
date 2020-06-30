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
  CAST('353fc6f3bfc3c56a5a687f9a986af0da' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Tag-related
  CAST('6a8c63f0505bb15f17f13ecc0265f450' as uuid), -- set_id for Twitter
  NULL, -- parent_id
  'newyork' -- text
),

-- Example: San Francisco
(
  CAST('3bb2085aa5bce9506452fe8ebb9d0103' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Tag-related
  CAST('6a8c63f0505bb15f17f13ecc0265f450' as uuid), -- set_id for Twitter
  NULL, -- parent_id
  'sanfrancisco' -- text
),

-- Example: Grand Central, New York, NY, US + Open Location Code
(
  CAST('6e8e948d776612ddec233f65f6722324' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('03d0ca793b075f06f2fb6eb41084abd5' as uuid), -- set_id for Open Location Code
  NULL, -- parent_id
  '87G8Q23F+34', -- text
  'Grand Central, New York, NY, US + Open Location Code' -- description
),

-- Example: Grand Central, New York, NY, US + What3Words
(
  CAST('c2d3cea54d44a64ad5093c5aaa7076ae' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('b712df2becc88dcb7201572e1bbc0980' as uuid), -- set_id for What3Words
  NULL, -- parent_id
  'rubble.occurs.holds', -- text
  'Grand Central, New York, NY, US + What3Words' -- description
),

-- Example: Grand Central, New York, NY, US + WhatFreeWords
(
  CAST('6e832771f5f844deabce47ebbfc8eba0' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('fb126177afe10f5dbe512449a81df9f3' as uuid), -- set_id for WhatFreeWords
  NULL, -- parent_id
  'burst.fully.things', -- text
  'Grand Central, New York, NY, US + WhatFreeWords' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + Open Location Code
(
  CAST('7fd5e5969b5a69ce1149263854a868e8' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('03d0ca793b075f06f2fb6eb41084abd5' as uuid), -- set_id for Open Location Code
  NULL, -- parent_id
  '849VQJW4+6M', -- text
  'Ferry Building, San Francisco, CA, US + Open Location Code' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + What3Words
(
  CAST('96832a0db64a21acf88fa619ce08b93a' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('b712df2becc88dcb7201572e1bbc0980' as uuid), -- set_id for What3Words
  NULL, -- parent_id
  'banks.issues.socket', -- text
  'Ferry Building, San Francisco, CA, US + What3Words' -- description
),

-- Example: Ferry Building, San Francisco, CA, US + WhatFreeWords
(
  CAST('4a7b52bd2ec81616100990b38fa6fcc6' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Code-related
  CAST('fb126177afe10f5dbe512449a81df9f3' as uuid), -- set_id for WhatFreeWords
  NULL, -- parent_id
  'solid.cracks.solar', -- text
  'Ferry Building, San Francisco, CA, US + WhatFreeWords' -- description
);
