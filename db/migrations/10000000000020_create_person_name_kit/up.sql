CREATE TABLE person_name_kits (
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

-- Programming-related
CREATE INDEX ix_person_name_kits_tenant_id on person_name_kits(tenant_id);
CREATE INDEX ix_person_name_kits_type_uri on person_name_kits(type_uri);
CREATE INDEX ix_person_name_kits_type_name on person_name_kits(type_name);
CREATE INDEX ix_person_name_kits_state_uri on person_name_kits(state_uri);
CREATE INDEX ix_person_name_kits_state_name on person_name_kits(state_name);

-- Update-related
CREATE INDEX ix_person_name_kits_updated_at_timestamp_utc on person_name_kits(updated_at_timestamp_utc);
CREATE INDEX ix_person_name_kits_updated_at_clock_count on person_name_kits(updated_at_clock_count);
CREATE INDEX ix_person_name_kits_updated_by_text on person_name_kits(updated_by_text);

-- Person-related
CREATE INDEX ix_person_name_kits_given_name on person_name_kits(given_name);
CREATE INDEX ix_person_name_kits_given_name_phonetic on person_name_kits(given_name_phonetic);
CREATE INDEX ix_person_name_kits_middle_name on person_name_kits(middle_name);
CREATE INDEX ix_person_name_kits_middle_name_phonetic on person_name_kits(middle_name_phonetic);
CREATE INDEX ix_person_name_kits_family_name on person_name_kits(family_name);
CREATE INDEX ix_person_name_kits_family_name_phonetic on person_name_kits(family_name_phonetic);
CREATE INDEX ix_person_name_kits_legal_name on person_name_kits(legal_name);
CREATE INDEX ix_person_name_kits_legal_name_phonetic on person_name_kits(legal_name_phonetic);
CREATE INDEX ix_person_name_kits_salutation on person_name_kits(salutation_name);
CREATE INDEX ix_person_name_kits_salutation_phonetic on person_name_kits(salutation_name_phonetic);
CREATE INDEX ix_person_name_kits_addressee on person_name_kits(addressee_name);
CREATE INDEX ix_person_name_kits_addressee_phonetic on person_name_kits(addressee_name_phonetic);
CREATE INDEX ix_person_name_kits_nickname on person_name_kits(nickname);
CREATE INDEX ix_person_name_kits_nickname_phonetic on person_name_kits(nickname_phonetic);
