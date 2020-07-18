CREATE TABLE color_rag (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  red_color_point_id text, -- example: Red-Amber-Green Red color is cherry red
  amber_color_point_id text, -- example: Red-Amber-Green Amber color is lemon yellow
  green_color_point_id text, -- example: Red-Amber-Green Green color is forest green
);

-- Metadata
CREATE INDEX ix_color_rag_updated_at_timestamp_utc on color_rag(updated_at_timestamp_utc);
CREATE INDEX ix_color_rag_updated_at_clock_count on color_rag(updated_at_clock_count);
CREATE INDEX ix_color_rag_tenant_id on color_rag(tenant_id);
CREATE INDEX ix_color_rag_parent_id on color_rag(parent_id);
CREATE INDEX ix_color_rag_set_id on color_rag(set_id);
CREATE INDEX ix_color_rag_type_id on color_rag(type_id);
CREATE INDEX ix_color_rag_state_id on color_rag(state_id);

-- Main
CREATE INDEX ix_color_rag_red_color_point_id on color_rag(red_color_point_id);
CREATE INDEX ix_color_rag_amber_color_point_id on color_rag(amber_color_point_id);
CREATE INDEX ix_color_rag_green_color_point_id on color_rag(green_color_point_id);
