INSERT INTO units VALUES 

-- Example: gram (mass)
(
  '7979757b4a62cb375ab6b6eaa0696b41', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Unit-related
  'gram', -- singular
  'grams', -- plural
  'g' -- symbol
),

-- Example: metre (distance)
(
  '3cd17b99da5e6329617f4a32a540758a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Unit-related
  'metre', -- singular
  'metres', -- plural
  'm' -- symbol
),

-- Example: second (time)
(
  'bb15d5f0a3b875e13713cd7c5b4be94d', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Unit-related
  'second', -- singular
  'seconds', -- plural
  's' -- symbol
),

-- Example: candela (light intensity)
(
  'f1afd44920ff64b091f231612b4da153', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Unit-related
  'candela', -- singular
  'candelas', -- plural
  'cd' -- symbol
),

-- Example: kelvin (temperature)
(
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Unit-related
  'kelvin', -- singular
  'kelvins', -- plural
  'K' -- symbol
);
