CREATE TABLE geo_point (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Geo-related
  latitude_as_decimal_degrees numeric(12,9), -- example: '37.8199' is 37.8199° N which is Golden Gate Bridge
  longitude_as_decimal_degrees numeric(12,9), -- example: '122.4783' is 122.4783° W (Golden Gate Bridge)
  altitude_agl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters above ground level
  altitude_msl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters to mean sea level
  elevation_agl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters above ground level
  elevation_msl_as_meters numeric(20,9) -- example: '67.056' is 67.056 meters to mean sea level
);

-- Metadata
CREATE INDEX ix_geo_point_updated_at_timestamp_utc on geo_point(updated_at_timestamp_utc);
CREATE INDEX ix_geo_point_updated_at_clock_count on geo_point(updated_at_clock_count);
CREATE INDEX ix_geo_point_tenant_id on geo_point(tenant_id);
CREATE INDEX ix_geo_point_parent_id on geo_point(parent_id);
CREATE INDEX ix_geo_point_set_id on geo_point(set_id);
CREATE INDEX ix_geo_point_type_id on geo_point(type_id);
CREATE INDEX ix_geo_point_state_id on geo_point(state_id);

-- Geo-related
CREATE INDEX ix_geo_point_latitude_as_decimal_degrees on geo_point(latitude_as_decimal_degrees);
CREATE INDEX ix_geo_point_longitude_as_decimal_degrees on geo_point(longitude_as_decimal_degrees);
CREATE INDEX ix_geo_point_altitude_msl_as_meters on geo_point(altitude_msl_as_meters);
CREATE INDEX ix_geo_point_altitude_agl_as_meters on geo_point(altitude_agl_as_meters);
CREATE INDEX ix_geo_point_elevation_msl_as_meters on geo_point(elevation_msl_as_meters);
CREATE INDEX ix_geo_point_elevation_agl_as_meters on geo_point(elevation_agl_as_meters);
