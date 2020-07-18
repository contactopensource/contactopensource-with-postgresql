-- Color signs
--
-- These examples use the colors that are set in the colors SQL file:
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

INSERT INTO color_signs VALUES 

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
  'd4b334d25ac6653f0c75f54a3bb620f4', -- safety_color_id = green
  '6deef93b2f8c393a3199b7833fd4aabd', -- caution_color_id = orange
  'df9839f3a5b2914cdb2cbfdc9548039b', -- warning_color_id = yellow
  '3e07938b4c5d1e16b1169019e9a6e410', -- danger_color_id = red
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
  'aee60f877e321203e1116090bb0a3725', -- safety_color_id = white
  'a2c1388fb38e2c4e1c004ca54467447f', -- caution_color_id = gray
  'a2c1388fb38e2c4e1c004ca54467447f', -- warning_color_id = gray
  'b687bbd6443ccb467c20a42118f90950' -- danger_color_id = black
);
