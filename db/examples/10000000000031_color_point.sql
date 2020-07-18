-- Colors
--
-- These examples create these typical colors:
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

INSERT INTO colors VALUES 

-- Example: red
(
  '3e07938b4c5d1e16b1169019e9a6e410', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "FF0000", -- hex
  1.00, -- red_unit_interval
  0.00, -- green_unit_interval
  0.00, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: orange
(
  '6deef93b2f8c393a3199b7833fd4aabd', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "FFA500", -- hex
  1.00, -- red_unit_interval
  0.64, -- green_unit_interval
  0.00, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: yellow
(
  'df9839f3a5b2914cdb2cbfdc9548039b', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "FFFF00", -- hex
  1.00, -- red_unit_interval
  1.00, -- green_unit_interval
  0.00, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: green
(
  'd4b334d25ac6653f0c75f54a3bb620f4', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "00FF00", -- hex
  0.00, -- red_unit_interval
  1.00, -- green_unit_interval
  0.00, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: blue
(
  'aee60f877e321203e1116090bb0a3725', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "0000FF", -- hex
  0.0, -- red_unit_interval
  0.0, -- green_unit_interval
  1.0, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: indigo
(
  '563f5171e841939bffc357c8e7a32ab8', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "4B0082", -- hex
  0.29, -- red_unit_interval
  0.00, -- green_unit_interval
  0.51, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: violet
(
  '7ad2aefac2c7ff549f7d89a429a22efc', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "EE82EE", -- hex
  0.93, -- red_unit_interval
  0.51, -- green_unit_interval
  0.93, -- blue_unit_interval
  null, -- cyan_unit_interval
  null, -- yellow_unit_interval
  null, -- magenta_unit_interval
  null -- black_unit_interval
),

-- Example: white
(
  'aee60f877e321203e1116090bb0a3725', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "FFFFFF", -- hex
  1.00, -- red_unit_interval
  1.00, -- green_unit_interval
  1.00, -- blue_unit_interval
  1.00, -- cyan_unit_interval
  1.00, -- yellow_unit_interval
  1.00, -- magenta_unit_interval
  0.00 -- black_unit_interval
),

-- Example: black
(
  'b687bbd6443ccb467c20a42118f90950', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "000000", -- hex
  0.0, -- red_unit_interval
  0.0, -- green_unit_interval
  0.0, -- blue_unit_interval
  0.0, -- cyan_unit_interval
  0.0, -- yellow_unit_interval
  0.0, -- magenta_unit_interval
  1.0 -- black_unit_interval
),

-- Example: gray
(
  'a2c1388fb38e2c4e1c004ca54467447f', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  "888888", -- hex
  0.50, -- red_unit_interval
  0.50, -- green_unit_interval
  0.50, -- blue_unit_interval
  0.00, -- cyan_unit_interval
  0.00, -- yellow_unit_interval
  0.00, -- magenta_unit_interval
  0.50 -- black_unit_interval
);
