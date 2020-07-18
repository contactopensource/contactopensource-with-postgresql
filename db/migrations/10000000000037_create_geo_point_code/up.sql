CREATE TABLE geo_point_code (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  geo_point_id text, -- example: c8fb5187e718484eefb9e8dceef4cd68 is New York Grand Central
  code text -- example: "newyorkgrandcentral"
);

-- Metadata
CREATE INDEX ix_geo_point_code_updated_at_timestamp_utc on geo_point_code(updated_at_timestamp_utc);
CREATE INDEX ix_geo_point_code_updated_at_clock_count on geo_point_code(updated_at_clock_count);
CREATE INDEX ix_geo_point_code_tenant_id on geo_point_code(tenant_id);
CREATE INDEX ix_geo_point_code_parent_id on geo_point_code(parent_id);
CREATE INDEX ix_geo_point_code_set_id on geo_point_code(set_id);
CREATE INDEX ix_geo_point_code_type_id on geo_point_code(type_id);
CREATE INDEX ix_geo_point_code_state_id on geo_point_code(state_id);

-- Main
CREATE INDEX ix_geo_point_code_geo_point_id on geo_point_code(geo_point_id);
CREATE INDEX ix_geo_point_code_code on geo_point_code(code);
