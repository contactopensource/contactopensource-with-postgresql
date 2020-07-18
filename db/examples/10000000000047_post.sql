INSERT INTO posts VALUES 

-- Example: Post by Alice
(
  'cae9d8f8b5f982122ee0039a260ebbc2', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Alice Adams', -- title,
  'alice.adams@example.com', -- subtitle,
  'persons/alice_adams/icons/512.jpg', -- box_img_uri,
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' -- content,
),

-- Example: Post by Amnesty International
(
  '0478736ed109d3e44f22e040fb00d75c', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Amnesty International', -- title,
  'info@amnesty.org', -- subtitle,
  'organizations/amnesty_international/icons/512.png', -- box_img_uri,
  'Cras ornare arcu dui vivamus arcu. Consectetur adipiscing elit duis tristique sollicitudin nibh sit. Pellentesque habitant morbi tristique senectus.' -- content,
),

-- Example: Post by Bob
(
  'b4d6797f1d3b9d4b94fbd60c8d03bd13', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Bob Brown', -- title,
  'bob.brown@example.com', -- subtitle,
  'persons/bob_brown/icons/512.jpg', -- box_img_uri,
  'Vitae suscipit tellus mauris a diam maecenas sed. Nunc sed velit dignissim sodales ut eu sem integer vitae.' -- content,
),

-- Example: Post by Burning Man
(
  '93c8a2a48e0c1723f15818e2b828ff34', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Burning Man', -- title,
  'info@burningman.org', -- subtitle,
  'organizations/burning_man/icons/512.jpg', -- box_img_uri,
  'Tincidunt augue interdum velit euismod. Dignissim suspendisse in est ante in nibh mauris cursus. Bibendum enim facilisis gravida neque convallis a cras semper. Gravida dictum fusce ut placerat orci nulla. Id aliquet lectus proin nibh nisl. Faucibus ornare suspendisse sed nisi lacus sed viverra. Dictum fusce ut placerat orci nulla.' -- content,
),

-- Example: Post by Carol
(
  'b70416ab8424ddead9e13033be1f9625', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Carol Clark', -- title,
  'carol.clark@example.com', -- subtitle,
  'persons/carol_clark/icons/512.jpg', -- box_img_uri,
  'Viverra justo nec ultrices dui. Leo integer malesuada nunc vel. Blandit libero volutpat sed cras. A cras semper auctor neque vitae tempus quam pellentesque.' -- content,
),

-- Example: Post by Care International
(
  'dc5b7dd916e97afd5495ee662a9c56a1', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Care International', -- title,
  'info@care.org', -- subtitle,
  'organizations/care/icons/512.png', -- box_img_uri,
  'Augue mauris augue neque gravida in fermentum et sollicitudin. Nisl tincidunt eget nullam non nisi est. Mauris vitae ultricies leo integer malesuada nunc vel risus.' -- content,
),

-- Example: Post by Dave
(
  '996a7e7cc394b2b67410f52effef4153', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Dave Davis', -- title,
  'dave.davis@example.com', -- subtitle,
  'persons/dave_davis/icons/512.jpg', -- box_img_uri,
  'Quis eleifend quam adipiscing vitae. Quisque non tellus orci ac auctor augue mauris augue neque. Lacinia quis vel eros donec.' -- content,
),

-- Example: Post by Direct Relief
(
  'd5496fc733a5910522a545b6e71d4223', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Direct Relief', -- title,
  'info@directrelief.org', -- subtitle,
  'organizations/direct_relief/icons/512.png', -- box_img_uri,
  'Ante metus dictum at tempor commodo ullamcorper a lacus. Laoreet sit amet cursus sit amet. Eu mi bibendum neque egestas congue quisque egestas.' -- content,
),

-- Example: Post by Eve
(
  'a37101f00c9a219f9e02df7bf2bdcc42', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Eve Evans', -- title,
  'eve.evans@example.com', -- subtitle,
  'persons/eve_evans/icons/512.jpg', -- box_img_uri,
  'Commodo viverra maecenas accumsan lacus vel. Faucibus ornare suspendisse sed nisi lacus sed viverra. Morbi tristique senectus et netus et malesuada.' -- content,
),

-- Post by Electronic Frontier Foundation
(
  '6a46a21195ed09ca6ff30878a9a06ac2', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Electronic Frontier Foundation', -- title,
  'info@eff.org', -- subtitle,
  'organizations/electronic_frontier_foundation/icons/512.png', -- box_img_uri,
  'Gravida dictum fusce ut placerat orci nulla. Id aliquet lectus proin nibh nisl. Faucibus ornare suspendisse sed nisi lacus sed viverra.' -- content,
),

-- Example: Post by Frank
(
  '6f26bb5735d4bb06792bf3cabf4676bb', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Frank Franklin', -- title,
  'frank.franklin@example.com', -- subtitle,
  'persons/frank_franklin/icons/512.jpg', -- box_img_uri,
  'Commodo viverra maecenas accumsan lacus vel. Faucibus ornare suspendisse sed nisi lacus sed viverra. Morbi tristique senectus et netus et malesuada.' -- content,
),

-- Examle: Post by Feed the Children
(
  'f53d6bbda2c79ef6430fa05001b00c32', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Post-related
  'Feed the Children', -- title,
  'info@feedthechildren.org', -- subtitle,
  'organizations/feed_the_children/icons/512.png', -- box_img_uri,
  'Faucibus pulvinar elementum integer enim. Proin libero nunc consequat interdum varius sit amet mattis. Pretium fusce id velit ut tortor.' -- content,
);
