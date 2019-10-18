CREATE TABLE geo_rectangles (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  typecast text, -- for optional single table inheritance
  state text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Geo-related
  left_top_geo_point_id uuid, -- example: d3ef3da36e8e835a464b51b00ae9a827 is Grand Central -0.1 latitude/longitude
  right_bottom_geo_point_id uuid -- example: 17c3d2697fea9eeeca776f855b69b394 is Grand Central +0.1 latitude/longitude

);

-- Programming-related
CREATE INDEX ix_geo_rectangles_tenant_id on geo_rectangles(tenant_id);
CREATE INDEX ix_geo_rectangles_typecast on geo_rectangles(typecast);
CREATE INDEX ix_geo_rectangles_state on geo_rectangles(state);

-- Update-related
CREATE INDEX ix_geo_rectangles_updated_at_timestamp_utc on geo_rectangles(updated_at_timestamp_utc);
CREATE INDEX ix_geo_rectangles_updated_at_clock_count on geo_rectangles(updated_at_clock_count);
CREATE INDEX ix_geo_rectangles_updated_by_text on geo_rectangles(updated_by_text);

-- Code-related
CREATE INDEX ix_geo_rectangles_left_top_geo_point_id on geo_rectangles(left_top_geo_point_id);
CREATE INDEX ix_geo_rectangles_right_bottom_geo_point_id on geo_rectangles(left_top_geo_point_id);
