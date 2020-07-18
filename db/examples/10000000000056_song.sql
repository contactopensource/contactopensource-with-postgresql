INSERT INTO songs VALUES 

-- Example: "Hello" on "25" by Adele 
(
  '6d3704b319fe96375290a5e104836a74', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Hello', -- title,
  'cedb7c48b63d3c61190af80d7853d94c', -- album_id of "25"
  '056a358fd586747590e9ac9ea7a80d79' -- artist_id of Adele
),

-- Example: "Welcome" on "Homecoming" by Beyoncé
(
  '1349c9a497794ffa2794853baf015f98', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  '', -- title,
  '7c0d90ab6aeb8d350f33d0bf92874235', -- album_id of "Homecoming"
  '33457519a49117825d71dc75f8d1c255' -- artist_id of Beyoncé
),

-- Example: "I Got You Babe" on "Look at Us" by Cher
(
  'f20d1d7f4881dd9d0e75d15fe0c1d6c3', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'I Got You Babe', -- title,
  '1d7ce25528bec5360418eeb8b3e72fe5', -- album_id of of "Look at Us"
  'bb29d91fbb168b7e9bb18333d620c805' -- artist_id of Cher
),

-- Example: "Know Yourself" on "If You're Reading This It's Too Late" by Drake
(
  '03503335d709bcf05c9614e185681ff0', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Know Yourself', -- title,
  'dda174001bf9f0fcbed509dcd0c0013c', -- album_id of "If You're Reading This It's Too Late"
  'dece05303173d248b91076b2fa3f7d02' -- artist_id of Drake
),

-- Example: "The Way I Am" on "The Marshall Mathers LP" by Eminem
(
  'f5a54822a62faa008f6218405a78230a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'The Way I Am', -- title,
  '7f4d3105506672786da4651de68a3ced', -- album_id of "The Marshall Mathers LP"
  '9f71e205c1e357274a3f561fac918b8b' -- artist_id of Eminem
),

-- Example: "1234" on "The Reminder" by Feist
(
  'e177f189e0aaf5e0cdf37a245893874a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  '1234', -- title,
  '779fe518df59b3458d74c071902a8a91', -- album_id of "The Reminder"
  'e886c1fcbbcdea05190b641fd42be683' -- artist_id of Feist
);
