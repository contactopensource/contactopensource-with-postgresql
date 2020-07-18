-- Color theme
--
-- These examples use the colors that are set in the file `color_points.sql`:
--
--   * 3e07938b4c5d1e16b1169019e9a6e410 red
--   * 6deef93b2f8c393a3199b7833fd4aabd orange
--   * df9839f3a5b2914cdb2cbfdc9548039b yellow
--   * d4b334d25ac6653f0c75f54a3bb620f4 green
--   * aee60f877e321203e1116090bb0a3725 blue
--   * 563f5171e841939bffc357c8e7a32ab8 indigo
--   * 7ad2aefac2c7ff549f7d89a429a22efc violet
--   * aee60f877e321203e1116090bb0a3725 white
--   * a2c1388fb38e2c4e1c004ca54467447f gray
--   * b687bbd6443ccb467c20a42118f90950 black

INSERT INTO color_themes VALUES 

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

  -- Color-theme-related
  'aee60f877e321203e1116090bb0a3725', -- primary_color_point_id = blue
  '563f5171e841939bffc357c8e7a32ab8', -- secondary_color_point_id = indigo
  '7ad2aefac2c7ff549f7d89a429a22efc', -- tertiary_color_point_id = violet
  'd4b334d25ac6653f0c75f54a3bb620f4', -- success_color_point_id = green
  '3e07938b4c5d1e16b1169019e9a6e410', -- failure_color_point_id = red
  'aee60f877e321203e1116090bb0a3725', -- light_color_point_id = white
  'b687bbd6443ccb467c20a42118f90950' -- dark_color_point_id = black
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

  -- Color-theme-related
  'aee60f877e321203e1116090bb0a3725', -- primary_color_point_id = whie
  'a2c1388fb38e2c4e1c004ca54467447f', -- secondary_color_point_id = gray
  'b687bbd6443ccb467c20a42118f90950', -- tertiary_color_point_id = black
  'aee60f877e321203e1116090bb0a3725', -- success_color_point_id = white
  'b687bbd6443ccb467c20a42118f90950', -- failure_color_point_id = black
  'aee60f877e321203e1116090bb0a3725', -- light_color_point_id = white
  'b687bbd6443ccb467c20a42118f90950' -- dark_color_point_id = black
);
