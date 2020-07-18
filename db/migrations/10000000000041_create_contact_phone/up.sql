CREATE TABLE contact_phone (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Phone-related
  label text, -- example: 'mobile phone'
  number_text text, -- example: '1 (415) 555-0000'

  -- E.164-related -- see https://en.wikipedia.org/wiki/E.164
  e164_text varchar(15), -- example: '14155550000' means United States country code, San Franicsco area code, etc.
  e164_country_code varchar(3), -- example: '1' means United States -- see https://en.wikipedia.org/wiki/E.164
  e164_national_destination_code varchar(13), -- example: '415' is the United States area code of San Francisco
  e164_group_identification_code varchar(4), -- example: TODO
  e164_trial_identification_code varchar(3), -- example: TODO
  e164_subscriber_number varchar(14) -- example: '5550000' -- see https://en.wikipedia.org/wiki/E.164
);

-- Metadata
CREATE INDEX ix_contact_phone_updated_at_timestamp_utc on contact_phone(updated_at_timestamp_utc);
CREATE INDEX ix_contact_phone_updated_at_clock_count on contact_phone(updated_at_clock_count);
CREATE INDEX ix_contact_phone_tenant_id on contact_phone(tenant_id);
CREATE INDEX ix_contact_phone_parent_id on contact_phone(parent_id);
CREATE INDEX ix_contact_phone_set_id on contact_phone(set_id);
CREATE INDEX ix_contact_phone_type_id on contact_phone(type_id);
CREATE INDEX ix_contact_phone_state_id on contact_phone(state_id);

-- Phone-related
CREATE INDEX ix_contact_phone_label on contact_phone(label);
CREATE INDEX ix_contact_phone_number_text on contact_phone(number_text);

-- E.164-related
CREATE INDEX ix_contact_phone_e164_text on contact_phone(e164_text);
CREATE INDEX ix_contact_phone_e164_country_code on contact_phone(e164_country_code);
CREATE INDEX ix_contact_phone_e164_national_destination_code on contact_phone(e164_national_destination_code);
CREATE INDEX ix_contact_phone_e164_group_identification_code on contact_phone(e164_group_identification_code);
CREATE INDEX ix_contact_phone_e164_trial_identification_code on contact_phone(e164_trial_identification_code);
CREATE INDEX ix_contact_phone_e164_subscriber_number on contact_phone(e164_subscriber_number);
