CREATE TABLE colors (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  typecast text, -- for optional single table inheritance
  state text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Code-related
  rgb_unit_interval_r decimal, -- example: Red-Green-Blue Red 0.20
  rgb_unit_interval_g decimal, -- example: Red-Green-Blue Blue 0.40
  rgb_unit_interval_b decimal, -- example: Red-Green-Blue Green 0.60
  cymk_unit_interval_c decimal, -- example: Cyan-Yellow-Mangenta-Black Cyan 0.20
  cymk_unit_interval_y decimal, -- example: Cyan-Yellow-Mangenta-Black Yellow 0.40
  cymk_unit_interval_m decimal, -- example: Cyan-Yellow-Mangenta-Black Magenta 0.80
  cymk_unit_interval_k decimal, -- example: Cyan-Yellow-Mangenta-Black Black 0.10
  hex char(6), -- example: "FF0088" means purple
  html_color_name text, -- see https://en.wikipedia.org/wiki/Web_colors#HTML_color_names
  x11_color_name text, -- see https://en.wikipedia.org/wiki/X11_color_names
  color_naming_system_name text, -- see https://en.wikipedia.org/wiki/Color_Naming_System
  pantone_matching_system_name text -- see https://en.wikipedia.org/wiki/Pantone
);

-- Programming-related
CREATE INDEX ix_colors_tenant_id on colors(tenant_id);
CREATE INDEX ix_colors_typecast on colors(typecast);
CREATE INDEX ix_colors_state on colors(state);

-- Update-related
CREATE INDEX ix_colors_updated_at_timestamp_utc on colors(updated_at_timestamp_utc);
CREATE INDEX ix_colors_updated_at_clock_count on colors(updated_at_clock_count);
CREATE INDEX ix_colors_updated_by_text on colors(updated_by_text);

-- locale-related
CREATE INDEX ix_colors_hex on colors(hex);
CREATE INDEX ix_colors_html_color_name on colors(html_color_name);
CREATE INDEX ix_colors_x11_color_name on colors(x11_color_name);
CREATE INDEX ix_colors_color_naming_system_name on colors(color_naming_system_name);
CREATE INDEX ix_colors_pantone_matching_system_name on colors(pantone_matching_system_name);
