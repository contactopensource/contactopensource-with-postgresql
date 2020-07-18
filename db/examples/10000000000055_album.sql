INSERT INTO albums VALUES 

-- Example: "25" by Adele
(
  'cedb7c48b63d3c61190af80d7853d94c', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  '25', -- title
  '056a358fd586747590e9ac9ea7a80d79' -- artist_id of Adele
),

-- Example: "Homecoming" by Beyoncé
(
  '7c0d90ab6aeb8d350f33d0bf92874235', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Homecoming', -- title
  '33457519a49117825d71dc75f8d1c255' -- artist_id of Beyoncé
),

-- Example: "Look at Us" by Cher
(
  '1d7ce25528bec5360418eeb8b3e72fe5', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Look at Us', -- title
  'bb29d91fbb168b7e9bb18333d620c805' -- artist_id of Cher
),

-- Example: "If You're Reading This It's Too Late" by Drake
(
  'dda174001bf9f0fcbed509dcd0c0013c', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'If You''re Reading This It's Too Late', -- title
  'dece05303173d248b91076b2fa3f7d02' -- artist_id of Drake
),

-- Example: "The Marshall Mathers LP" by Eminem
(
  '7f4d3105506672786da4651de68a3ced', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'The Marshall Mathers LP', -- title
  '9f71e205c1e357274a3f561fac918b8b' -- artist_id of Eminem
),

-- Example: "The Reminder" by Feist
(
  '779fe518df59b3458d74c071902a8a91', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'The Reminder', -- title
  'e886c1fcbbcdea05190b641fd42be683' -- artist_id of Feist
);
