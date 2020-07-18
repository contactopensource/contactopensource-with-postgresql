CREATE TABLE color_sign (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Code-related
  safety_color_point_id text, -- example: green means safe
  caution_color_point_id text, --  example: orange means caution
  warning_color_point_id text, -- example: yellow means warning
  danger_color_point_id text, -- example: red means danger
);

-- Metadata
CREATE INDEX ix_color_sign_updated_at_timestamp_utc on color_sign(updated_at_timestamp_utc);
CREATE INDEX ix_color_sign_updated_at_clock_count on color_sign(updated_at_clock_count);
CREATE INDEX ix_color_sign_tenant_id on color_sign(tenant_id);
CREATE INDEX ix_color_sign_parent_id on color_sign(parent_id);
CREATE INDEX ix_color_sign_set_id on color_sign(set_id);
CREATE INDEX ix_color_sign_type_id on color_sign(type_id);
CREATE INDEX ix_color_sign_state_id on color_sign(state_id);

-- Code-related
CREATE INDEX ix_color_sign_safety_color_id on color_sign(safety_color_point_id);
CREATE INDEX ix_color_sign_caution_color_id on color_sign(caution_color_point_id);
CREATE INDEX ix_color_sign_warning_color_id on color_sign(warning_color_point_id);
CREATE INDEX ix_color_sign_danger_color_id on color_sign(danger_color_point_id);
