INSERT INTO organizations VALUES 

-- Example: Acme Agency
(
  '4e7e13bcc42c082e9091ba389c06ba4d', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- General-related
  NULL, -- parent_id
  'Acme Agency', -- name
  'U+1F60A', -- emoji (e.g. happy face)

  -- Display-related
  'https://example.com/acme-agency.jpg', -- image_uri
  'FF0000', -- color_hex e.g. red
  'selected', -- css_class
  5, -- star_count

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD'), -- start_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD') -- stop_date

),

-- Example: Acme Agency, Art Department
(
  'ee88f1b3d1e186faa62d881f5393e92b', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- General-related
  '4e7e13bcc42c082e9091ba389c06ba4d', -- id of Acme Agency
  'Art Department', -- name
  '', -- emoji (e.g. happy face)

  -- Display-related
  'https://example.com/acme-agency/art-department.jpg', -- image_uri
  'FF0000', -- color_hex e.g. red
  'selected', -- css_class
  5, -- star_count

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD'), -- start_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD') -- stop_date

),

-- Example: Biotech Business
(
  'f78731aca36b48b1bdf723c9949e8149', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- General-related
  NULL, -- parent_id
  'Biotech Business', -- name
  'U+1F610', -- emoji (e.g. neutral face)

  -- Display-related
  'https://example.com/bravo.jpg', -- image_uri
  '00FF00', -- color_hex e.g. blue
  'unselected', -- css_class
  3, -- star_count

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD'), -- start_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD') -- stop_date
),

-- Example: Biotech Business, Biology Department
(
  'b59698523e6b32f82fee15e4fd4ab655', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- General-related
  'f78731aca36b48b1bdf723c9949e8149', -- id of Biotech Business
  'Biology Department', -- name
  '', -- emoji (e.g. neutral face)

  -- Display-related
  'https://example.com/bravo-books.jpg', -- image_uri
  '00FF00', -- color_hex e.g. blue
  'unselected', -- css_class
  3, -- star_count

  -- Lifetime-related
  TO_TIMESTAMP('2000-01-01', 'YYYY-MM-DD'), -- start_date
  TO_TIMESTAMP('2099-01-01', 'YYYY-MM-DD') -- stop_date
);
