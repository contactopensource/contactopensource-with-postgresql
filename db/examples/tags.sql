-- Example of tags that are each a simple hashtag word
--
-- Words:
--
--   * "newyork" is our example hashtag for New York
--
--   * "sanfrancisco" is our example hashtag for San Francisco
--
INSERT INTO tags VALUES 

-- Example: tag for New York
(
  CAST('353fc6f3bfc3c56a5a687f9a986af0da' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Tag-related
  CAST('6a8c63f0505bb15f17f13ecc0265f450' as uuid), -- set_id for Twitter
  NULL, -- parent_id
  'newyork' -- text

),

-- Example: tag for San Francisco
(
  CAST('3bb2085aa5bce9506452fe8ebb9d0103' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Tag-related
  CAST('6a8c63f0505bb15f17f13ecc0265f450' as uuid), -- set_id for Twitter
  NULL, -- parent_id
  'sanfrancisco' -- text

);
