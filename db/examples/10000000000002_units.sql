INSERT INTO units VALUES 

-- Example: gram (mass)
(
  CAST('7979757b4a62cb375ab6b6eaa0696b41' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Unit-related
  'gram', -- singular
  'grams', -- plural
  'g' -- symbol
),

-- Example: metre (distance)
(
  CAST('3cd17b99da5e6329617f4a32a540758a' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Unit-related
  'metre', -- singular
  'metres', -- plural
  'm' -- symbol
),

-- Example: second (time)
(
  CAST('bb15d5f0a3b875e13713cd7c5b4be94d' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Unit-related
  'second', -- singular
  'seconds', -- plural
  's' -- symbol
)

-- Example: candela (light intensity)
(
  CAST('f1afd44920ff64b091f231612b4da153' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Unit-related
  'candela', -- singular
  'candelas', -- plural
  'cd' -- symbol
)

-- Example: kelvin (temperature)
(
  CAST('e07d6c77ec656b790ea96a1250129ca8' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type
  '', -- state
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Unit-related
  'kelvin', -- singular
  'kelvins', -- plural
  'K' -- symbol
);
