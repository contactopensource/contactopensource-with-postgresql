CREATE TABLE color_theme (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  primary_color_point_id text, -- example: blue
  secondary_color_point_id text, -- example: indigo
  tertiary_color_point_id text, -- example: violet
  succes_color_point_id text, -- example: green
  failure_color_point_id text, -- example: red
  light_color_point_id text, -- example: light gray
  dark_color_point_id text, --  exmaple: dark gray
);

-- Metadata
CREATE INDEX ix_color_theme_updated_at_timestamp_utc on color_theme(updated_at_timestamp_utc);
CREATE INDEX ix_color_theme_updated_at_clock_count on color_theme(updated_at_clock_count);
CREATE INDEX ix_color_theme_tenant_id on color_theme(tenant_id);
CREATE INDEX ix_color_theme_parent_id on color_theme(parent_id);
CREATE INDEX ix_color_theme_set_id on color_theme(set_id);
CREATE INDEX ix_color_theme_type_id on color_theme(type_id);
CREATE INDEX ix_color_theme_state_id on color_theme(state_id);

-- Main
CREATE INDEX ix_color_theme_primary_color_point_id on color_theme(primary_color_point_id);
CREATE INDEX ix_color_theme_secondary_color_point_id on color_theme(secondary_color_point_id);
CREATE INDEX ix_color_theme_tertiary_color_point_id on color_theme(tertiary_color_point_id);
CREATE INDEX ix_color_theme_succes_color_point_id on color_theme(succes_color_point_id);
CREATE INDEX ix_color_theme_failure_color_point_id on color_theme(failure_color_point_id);
CREATE INDEX ix_color_theme_light_color_point_id on color_theme(light_color_point_id);
CREATE INDEX ix_color_theme_dark_color_point_id on color_theme(dark_color_point_id);
