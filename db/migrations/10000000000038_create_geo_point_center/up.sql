CREATE TABLE geo_point_center (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Code-related
  geo_point_id text, -- example: c8fb5187e718484eefb9e8dceef4cd68 is New York Grand Central
  spread_as_meters numeric(20,9) -- example: 1000 is 1 kilometer

);

-- Metadata
CREATE INDEX ix_geo_point_center_updated_at_timestamp_utc on geo_point_center(updated_at_timestamp_utc);
CREATE INDEX ix_geo_point_center_updated_at_clock_count on geo_point_center(updated_at_clock_count);
CREATE INDEX ix_geo_point_center_tenant_id on geo_point_center(tenant_id);
CREATE INDEX ix_geo_point_center_parent_id on geo_point_center(parent_id);
CREATE INDEX ix_geo_point_center_set_id on geo_point_center(set_id);
CREATE INDEX ix_geo_point_center_type_id on geo_point_center(type_id);
CREATE INDEX ix_geo_point_center_state_id on geo_point_center(state_id);

-- Code-related
CREATE INDEX ix_geo_point_center_geo_point_id on geo_point_center(geo_point_id);
CREATE INDEX ix_geo_point_center_spread_as_meters on geo_point_center(spread_as_meters);
