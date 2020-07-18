INSERT INTO jobs VALUES 

-- Example: Amnesty International -> Alpha Job
(
  '472dd6479268fa5f771df10f6d4b19df', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Amnesty International -> Alpha Job', -- name
  'ccf8bf385cce40a4290ac17ee4c1c94b', -- organization_id
),

-- Example: Burning Man -> Bravo Job
(
  '81d91b1b45b53a413b49a9352672a447', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Burning Man -> Bravo Job', -- name
  '3d3d20398ccb973e1033893db540c61f' -- organization_id
),

-- Example: Care International -> Charlie Job
(
  '90fe4ba71195d852255c7dce7d05e2ef', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Care International -> Charlie Job' -- name
  'a5a7fe9c77040fc0fbefabfbc202ff4d', -- organization_id
),

-- Example: Direct Relief -> Delta Job
(
  '2c7ddb8b9c778c220097fb720fb1355d', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Direct Relief -> Delta Job' -- name
  'f3c01abe5b51f7d5460bddf4924a1fa2' -- organization_id
),

-- Example: Electronic Frontier Foundation -> Echo Job
(
  'd5081103d8e48228ce10b743effb562e', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Electronic Frontier Foundation -> Echo Job', -- name
  'ec40f990cedc5f0917850a2b2249e111' -- organization_id

),

-- Example: Feed the Children -> Foxtrot Job
(
  'ecb35abe0afcf80e172c2378f4333586', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'Feed the Children -> Foxtrot Job', -- name
  '9aa2fb3c92eb1752d6d8814ecac122f1' -- organization_id
);
