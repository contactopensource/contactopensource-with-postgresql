CREATE TABLE person (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Lifetime-related
  birth_date date, -- example: '2000-01-01'
  death_date date, -- example: '2099-01-01'

  -- Physical-related
  mas_as_grams numeric(12,9), -- example: TODO
  height_as_meters numeric(10,9), -- example: TODO

  -- Org-related
  org_name text, -- example: 'Acme Company'
  org_team text, -- example: 'Department of Widgets'
  org_role text -- example: 'Manager of Widgets'

);

-- Metadata
CREATE INDEX ix_person_updated_at_timestamp_utc on person(updated_at_timestamp_utc);
CREATE INDEX ix_person_updated_at_clock_count on person(updated_at_clock_count);
CREATE INDEX ix_person_tenant_id on person(tenant_id);
CREATE INDEX ix_person_parent_id on person(parent_id);
CREATE INDEX ix_person_set_id on person(set_id);
CREATE INDEX ix_person_type_id on person(type_id);
CREATE INDEX ix_person_state_id on person(state_id);

-- Lifetime-related
CREATE INDEX ix_person_birth_date on person(birth_date);
CREATE INDEX ix_person_death_date on person(death_date);

-- Physical-related
CREATE INDEX ix_person_mas_as_grams on person(mas_as_grams);
CREATE INDEX ix_person_height_as_meters on person(height_as_meters);

-- Org-related
CREATE INDEX ix_person_org_name on person(org_name);
CREATE INDEX ix_person_org_team on person(org_team);
CREATE INDEX ix_person_org_role on person(org_role);
