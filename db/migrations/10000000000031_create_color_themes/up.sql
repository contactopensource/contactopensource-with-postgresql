CREATE TABLE color_themes (
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
  primary_color_id uuid, -- example: gold
  secondary_color_id uuid, -- example: blue
  tertiary_color_id uuid, -- example: 
  success_color_id uuid, -- example: green
  failure_color_id uuid, -- example: red
  light_color_id uuid, -- example: light gray
  dark_color_id uuid, --  exmaple: dark gray
  safety_color_id uuid, -- example: green means safe
  caution_color_id uuid, --  example: orange means caution
  warning_color_id uuid, -- example: yellow means warning
  danger_color_id uuid, -- example: red means danger
  rag_status_r_color_id uuid, -- example: Red-Amber-Green Red color is cherry red
  rag_status_a_color_id uuid, -- example: Red-Amber-Green Amber color is lemon yellow
  rag_status_g_color_id uuid, -- example: Red-Amber-Green Green color is forest green
);

-- Programming-related
CREATE INDEX ix_color_themes_tenant_id on colors(tenant_id);
CREATE INDEX ix_color_themes_typecast on colors(typecast);
CREATE INDEX ix_color_themes_state on colors(state);

-- Update-related
CREATE INDEX ix_color_themes_updated_at_timestamp_utc on colors(updated_at_timestamp_utc);
CREATE INDEX ix_color_themes_updated_at_clock_count on colors(updated_at_clock_count);
CREATE INDEX ix_color_themes_updated_by_text on colors(updated_by_text);

-- Code-related
CREATE INDEX ix_color_themes_primary_color_id on color_themes(primary_color_id);
CREATE INDEX ix_color_themes_secondary_color_id on color_themes(secondary_color_id);
CREATE INDEX ix_color_themes_tertiary_color_id on color_themes(tertiary_color_id);
CREATE INDEX ix_color_themes_success_color_id on color_themes(success_color_id);
CREATE INDEX ix_color_themes_failure_color_id on color_themes(failure_color_id);
CREATE INDEX ix_color_themes_light_color_id on color_themes(light_color_id);
CREATE INDEX ix_color_themes_dark_color_id on color_themes(dark_color_id);
CREATE INDEX ix_color_themes_safety_color_id on color_themes(safety_color_id);
CREATE INDEX ix_color_themes_caution_color_id on color_themes(caution_color_id);
CREATE INDEX ix_color_themes_warning_color_id on color_themes(warning_color_id);
CREATE INDEX ix_color_themes_danger_color_id on color_themes(danger_color_id);
CREATE INDEX ix_color_themes_rag_status_r_color_id on color_themes(rag_status_r_color_id);
CREATE INDEX ix_color_themes_rag_status_a_color_id on color_themes(rag_status_a_color_id);
CREATE INDEX ix_color_themes_rag_status_g_color_id on color_themes(rag_status_g_color_id);
