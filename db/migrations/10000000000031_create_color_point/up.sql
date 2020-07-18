CREATE TABLE color_point (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Code-related
  hex char(6), -- example: "FF0088" means purple
  red_unit_interval decimal, -- example: Red-Green-Blue Red 1.000000
  green_unit_interval decimal, -- example: Red-Green-Blue Green 0.000000
  blue_unit_interval decimal, -- example: Red-Green-Blue Blue 0.500000
  cyan_unit_interval decimal, -- example: Cyan-Yellow-Mangenta-Black Cyan 0.20
  yellow_unit_interval decimal, -- example: Cyan-Yellow-Mangenta-Black Yellow 0.40
  magenta_unit_interval decimal, -- example: Cyan-Yellow-Mangenta-Black Magenta 0.80
  black_unit_interval decimal, -- example: Cyan-Yellow-Mangenta-Black Black 0.10
);

-- Metadata
CREATE INDEX ix_color_point_updated_at_timestamp_utc on color_point(updated_at_timestamp_utc);
CREATE INDEX ix_color_point_updated_at_clock_count on color_point(updated_at_clock_count);
CREATE INDEX ix_color_point_tenant_id on color_point(tenant_id);
CREATE INDEX ix_color_point_parent_id on color_point(parent_id);
CREATE INDEX ix_color_point_set_id on color_point(set_id);
CREATE INDEX ix_color_point_type_id on color_point(type_id);
CREATE INDEX ix_color_point_state_id on color_point(state_id);

-- Color-related
CREATE INDEX ix_color_hex on color(hex);
