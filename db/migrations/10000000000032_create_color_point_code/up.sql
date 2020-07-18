CREATE TABLE color_point_code (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  html_color_name text, -- see https://en.wikipedia.org/wiki/Web_colors#HTML_color_names
  x11_color_name text, -- see https://en.wikipedia.org/wiki/X11_color_names
  color_naming_system_name text, -- see https://en.wikipedia.org/wiki/Color_Naming_System
  pantone_matching_system_name text -- see https://en.wikipedia.org/wiki/Pantone
);

-- Metadata
CREATE INDEX ix_color_point_code_updated_at_timestamp_utc on color_point_code(updated_at_timestamp_utc);
CREATE INDEX ix_color_point_code_updated_at_clock_count on color_point_code(updated_at_clock_count);
CREATE INDEX ix_color_point_code_tenant_id on color_point_code(tenant_id);
CREATE INDEX ix_color_point_code_parent_id on color_point_code(parent_id);
CREATE INDEX ix_color_point_code_set_id on color_point_code(set_id);
CREATE INDEX ix_color_point_code_type_id on color_point_code(type_id);
CREATE INDEX ix_color_point_code_state_id on color_point_code(state_id);

-- Main
CREATE INDEX ix_color_html_color_name on color(html_color_name);
CREATE INDEX ix_color_x11_color_name on color(x11_color_name);
CREATE INDEX ix_color_color_naming_system_name on color(color_naming_system_name);
CREATE INDEX ix_color_pantone_matching_system_name on color(pantone_matching_system_name);
