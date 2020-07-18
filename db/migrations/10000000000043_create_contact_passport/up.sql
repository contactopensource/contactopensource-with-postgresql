CREATE TABLE contact_passport (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Place-related
  country_text text, -- example: 'US' is United States
  number_text text, -- example: '000-000-000-000'

  -- Time-related
  valid_start_date date, -- example: 2020-01-01
  valid_stop_date date -- example: 2030-01-01

);

-- Metadata
CREATE INDEX ix_contact_passport_updated_at_timestamp_utc on contact_passport(updated_at_timestamp_utc);
CREATE INDEX ix_contact_passport_updated_at_clock_count on contact_passport(updated_at_clock_count);
CREATE INDEX ix_contact_passport_tenant_id on contact_passport(tenant_id);
CREATE INDEX ix_contact_passport_parent_id on contact_passport(parent_id);
CREATE INDEX ix_contact_passport_set_id on contact_passport(set_id);
CREATE INDEX ix_contact_passport_type_id on contact_passport(type_id);
CREATE INDEX ix_contact_passport_state_id on contact_passport(state_id);

-- Place-related
CREATE INDEX ix_contact_passport_country_text on contact_passport(country_text);
CREATE INDEX ix_contact_passport_number_text on contact_passport(number_text);

-- Time-related
CREATE INDEX ix_contact_passport_valid_start_date on contact_passport(valid_start_date);
CREATE INDEX ix_contact_passport_valid_stop_date on contact_passport(valid_stop_date);
