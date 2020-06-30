INSERT INTO person_name_kits VALUES 

-- Example: Dr. Alice Amy Adams Jr.
(
  CAST('cc1143129505d87f5f0a044b7dbef236' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Name-related
  'Alice', -- given_name
  'alice', -- given_name_phonetic
  'Amy', -- middle_name
  'amy', -- middle_name_phonetic
  'Adams', -- family_name
  'adams', -- family_name_phonetic
  'Alice Amy Adams', -- legal_name
  'alice amy adams', -- legal_name_phonetic
  'Dr.', -- prefix_name
  'doctor', -- prefix_name_phonetic
  'Jr.', -- suffix_name
  'junior', -- suffix_name_phonetic
  'Dr. Adams', -- salutation_name
  'doctor adams', -- salutation_name_phonetic
  'Dr. Alice Adams Jr.', -- addressee_name
  'doctor alice adams junior', -- addressee_name_phonetic
  'Ali', -- nickname
  'ali' -- nickname_phonetic
), 

-- Example: Hon. Bob Brian Brown Sr.
(
  CAST('925561d3c5d097b690d029ef03d08721' as uuid), -- id
  CAST('7bd380209cd310d3ad4e7f980298cbea' as uuid), -- tenant_id
  '', -- type_uri
  '', -- type_name
  '', -- state_uri
  '', -- state_name
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  'updated by example', -- updated_by_text

  -- Name-related
  'Bob', -- given_name
  'bob', -- given_name_phonetic
  'Brian', -- middle_name
  'brian', -- middle_name_phonetic
  'Brown', -- family_name
  'brown', -- family_name_phonetic
  'Bob Brian Brown', -- legal_name
  'bob brian brown', -- legal_name_phonetic
  'Hon.', -- prefix_name
  'honorable', -- prefix_name_phonetic
  'Sr.', -- suffix_name
  'senior', -- suffix_name_phonetic
  'Hon. Brown', -- salutation_name
  'honorable brown', -- salutation_name_phonetic
  'Hon. Bob Brown Sr.', -- addressee_name
  'honrable bob brown senior', -- addressee_name_phonetic
  'Bobby', -- nickname
  'bobby' -- nickname_phonetic
);
