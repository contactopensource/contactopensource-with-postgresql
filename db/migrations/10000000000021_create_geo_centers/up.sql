CREATE TABLE geo_centers (
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
  center_as_geo_point_id uuid, -- example: c8fb5187e718484eefb9e8dceef4cd68 is New York Grand Central
  radius_as_meters numeric(20,9) -- example: 1000 is 1 kilometer

);

-- Programming-related
CREATE INDEX ix_geo_centers_tenant_id on geo_centers(tenant_id);
CREATE INDEX ix_geo_centers_typecast on geo_centers(typecast);
CREATE INDEX ix_geo_centers_state on geo_centers(state);

-- Update-related
CREATE INDEX ix_geo_centers_updated_at_timestamp_utc on geo_centers(updated_at_timestamp_utc);
CREATE INDEX ix_geo_centers_updated_at_clock_count on geo_centers(updated_at_clock_count);
CREATE INDEX ix_geo_centers_updated_by_text on geo_centers(updated_by_text);

-- Code-related
CREATE INDEX ix_geo_centers_center_as_geo_point_id on geo_centers(center_as_geo_point_id);
CREATE INDEX ix_geo_centers_radius_as_meters on geo_centers(radius_as_meters);
