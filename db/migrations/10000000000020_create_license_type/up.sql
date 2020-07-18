CREATE TABLE license_type (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- General-related
  name text, -- example: 'GNU General Public License v2.0'
  spdx_identifier text, -- example: 'GPL-2.0-only'
  text text -- example: full text of the license
);

-- Metadata
CREATE INDEX ix_license_updated_at_timestamp_utc on license(updated_at_timestamp_utc);
CREATE INDEX ix_license_updated_at_clock_count on license(updated_at_clock_count);
CREATE INDEX ix_license_tenant_id on license(tenant_id);
CREATE INDEX ix_license_parent_id on license(parent_id);
CREATE INDEX ix_license_set_id on license(set_id);
CREATE INDEX ix_license_type_id on license(type_id);
CREATE INDEX ix_license_state_id on license(state_id);

-- General-related
CREATE INDEX ix_license_name on license(name);
CREATE INDEX ix_license_spdx_identifier on license(spdx_identifier);
