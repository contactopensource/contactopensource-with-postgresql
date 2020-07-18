-- Color RAGs

INSERT INTO color_rags VALUES 

-- Example: typical colors
(
  '3d0371825fd00869d9cdb4747cad655a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  '3e07938b4c5d1e16b1169019e9a6e410', -- red_color_point_id = color_point_id of cherry red
  'df9839f3a5b2914cdb2cbfdc9548039b', -- amber_color_point_id = color_point_id of lemon yellow
  'd4b334d25ac6653f0c75f54a3bb620f4'  -- green_color_point_id = color_point_id of forest green
),

-- Example: grayscale colors
(
  '3d0371825fd00869d9cdb4747cad655a', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Main
  'aee60f877e321203e1116090bb0a3725', -- red_color_point_id = color_point_id of white
  'a2c1388fb38e2c4e1c004ca54467447f', -- amber_color_point_id = color_point_id of gray
  'b687bbd6443ccb467c20a42118f90950'  -- green_color_point_id = color_point_id of black
);
