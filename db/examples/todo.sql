-- Example of tags that are geographic codes for places.
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

-- Example: Grand Central, New York, NY, US + Open Location Code
(
  CAST('353fc6f3bfc3c56a5a687f9a986af0da' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- typecast
  '', -- type_name
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
  '', -- typecast
  '', -- type_name
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
  '', -- typecast
  '', -- type_name
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
  CAST('a15b731ccf676e1340caa969fc3a43cc' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- typecast
  '', -- type_name
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
  '', -- typecast
  '', -- type_name
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
  '', -- typecast
  '', -- type_name
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
