CREATE TABLE person_name_kit (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Name-related
  given_name text, -- example: 'Alice'
  given_name_phonetic text, -- example: 'alice'
  middle_name text, -- example: 'Amy'
  middle_name_phonetic text, -- example: 'amy'
  family_name text, -- example: 'Adams'
  family_name_phonetic text, -- example: 'adams'
  legal_name text, -- example: 'Alice Amy Adams'
  legal_name_phonetic text, -- example: 'alice amy adams'
  prefix_name text, -- example: 'Dr.'
  prefix_name_phonetic text, -- example: 'doctor'
  suffix_name text, -- example: 'Jr.'
  suffix_name_phonetic text, -- example: 'junior'
  salutation_name text, -- example: 'Dr. Adams'
  salutation_name_phonetic text, -- example: 'doctor adams'
  addressee_name text, -- example: 'Dr. Alice Adams Jr.'
  addressee_name_phonetic text, -- example: 'doctor alice adams junior'
  nickname text, -- example: 'Ali'
  nickname_phonetic text -- example: 'ali'

);

-- Metadata
CREATE INDEX ix_person_name_kit_updated_at_timestamp_utc on person_name_kit(updated_at_timestamp_utc);
CREATE INDEX ix_person_name_kit_updated_at_clock_count on person_name_kit(updated_at_clock_count);
CREATE INDEX ix_person_name_kit_tenant_id on person_name_kit(tenant_id);
CREATE INDEX ix_person_name_kit_parent_id on person_name_kit(parent_id);
CREATE INDEX ix_person_name_kit_set_id on person_name_kit(set_id);
CREATE INDEX ix_person_name_kit_type_id on person_name_kit(type_id);
CREATE INDEX ix_person_name_kit_state_id on person_name_kit(state_id);

-- Person-related
CREATE INDEX ix_person_name_kit_given_name on person_name_kit(given_name);
CREATE INDEX ix_person_name_kit_given_name_phonetic on person_name_kit(given_name_phonetic);
CREATE INDEX ix_person_name_kit_middle_name on person_name_kit(middle_name);
CREATE INDEX ix_person_name_kit_middle_name_phonetic on person_name_kit(middle_name_phonetic);
CREATE INDEX ix_person_name_kit_family_name on person_name_kit(family_name);
CREATE INDEX ix_person_name_kit_family_name_phonetic on person_name_kit(family_name_phonetic);
CREATE INDEX ix_person_name_kit_legal_name on person_name_kit(legal_name);
CREATE INDEX ix_person_name_kit_legal_name_phonetic on person_name_kit(legal_name_phonetic);
CREATE INDEX ix_person_name_kit_salutation on person_name_kit(salutation_name);
CREATE INDEX ix_person_name_kit_salutation_phonetic on person_name_kit(salutation_name_phonetic);
CREATE INDEX ix_person_name_kit_addressee on person_name_kit(addressee_name);
CREATE INDEX ix_person_name_kit_addressee_phonetic on person_name_kit(addressee_name_phonetic);
CREATE INDEX ix_person_name_kit_nickname on person_name_kit(nickname);
CREATE INDEX ix_person_name_kit_nickname_phonetic on person_name_kit(nickname_phonetic);
