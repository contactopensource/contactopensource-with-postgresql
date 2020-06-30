CREATE TABLE geo_points (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  type_uri text, -- for optional type reference
  type_name text, -- for optional single table inheritance
  state_uri text, -- for optional state reference
  state_name text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Geo-related
  latitude_as_decimal_degrees numeric(12,9), -- example: '37.8199' is 37.8199° N which is Golden Gate Bridge
  longitude_as_decimal_degrees numeric(12,9), -- example: '122.4783' is 122.4783° W (Golden Gate Bridge)
  altitude_msl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters to mean sea level
  altitude_agl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters above ground level
  elevation_msl_as_meters numeric(20,9), -- example: '67.056' is 67.056 meters to mean sea level
  elevation_agl_as_meters numeric(20,9) -- example: '67.056' is 67.056 meters above ground level
);

-- Programming-related
CREATE INDEX ix_geo_points_tenant_id on geo_points(tenant_id);
CREATE INDEX ix_geo_points_type_uri on media_types(type_uri);
CREATE INDEX ix_geo_points_type_name on media_types(type_name);
CREATE INDEX ix_geo_points_state_uri on media_types(state_uri);
CREATE INDEX ix_geo_points_state_name on media_types(state_name);

-- Update-related
CREATE INDEX ix_geo_points_updated_at_timestamp_utc on geo_points(updated_at_timestamp_utc);
CREATE INDEX ix_geo_points_updated_at_clock_count on geo_points(updated_at_clock_count);
CREATE INDEX ix_geo_points_updated_by_text on geo_points(updated_by_text);

-- Geo-related
CREATE INDEX ix_geo_points_latitude_as_decimal_degrees on geo_points(latitude_as_decimal_degrees);
CREATE INDEX ix_geo_points_longitude_as_decimal_degrees on geo_points(longitude_as_decimal_degrees);
CREATE INDEX ix_geo_points_altitude_msl_as_meters on geo_points(altitude_msl_as_meters);
CREATE INDEX ix_geo_points_altitude_agl_as_meters on geo_points(altitude_agl_as_meters);
CREATE INDEX ix_geo_points_elevation_msl_as_meters on geo_points(elevation_msl_as_meters);
CREATE INDEX ix_geo_points_elevation_agl_as_meters on geo_points(elevation_agl_as_meters);
