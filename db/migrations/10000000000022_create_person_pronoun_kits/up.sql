CREATE TABLE person_pronoun_kits (
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

  -- Pronoun-related
  subject_pronoun text, -- example: 'she' as in 'She likes Alice.'; see: https://wikipedia.org/wiki/Subject_pronoun
  object_pronoun text, -- example: 'her' as in 'Alice likes her.'; see: https://wikipedia.org/wiki/Object_pronoun
  dependent_possessive_pronoun text, -- example: 'her' as in 'Her ideas are good.'; see: https://wikipedia.org/wiki/Possessive_pronoun
  independent_possessive_pronoun text, -- example: 'hers' as in 'The ideas are hers.'; see: https://wikipedia.org/wiki/Possessive_determiner
  reflexive_pronoun text, -- example: 'herself' as in 'She likes herself'; see https://wikipedia.org/wiki/Reflexive_pronoun
  intensive_pronoun text, -- example: 'herself' as in 'She does it herself.'; see: https://en.wikipedia.org/wiki/Intensive_pronoun
  disjunctive_pronoun text -- example: 'her' as in 'It is her.'; see https://wikipedia.org/wiki/Disjunctive_pronoun

);

-- Programming-related
CREATE INDEX ix_person_pronoun_kits_tenant_id on person_pronoun_kits(tenant_id);
CREATE INDEX ix_person_pronoun_kits_type_uri on person_pronoun_kits(type_uri);
CREATE INDEX ix_person_pronoun_kits_type_name on person_pronoun_kits(type_name);
CREATE INDEX ix_person_pronoun_kits_state_uri on person_pronoun_kits(state_uri);
CREATE INDEX ix_person_pronoun_kits_state_name on person_pronoun_kits(state_name);

-- Update-related
CREATE INDEX ix_person_pronoun_kits_updated_at_timestamp_utc on person_pronoun_kits(updated_at_timestamp_utc);
CREATE INDEX ix_person_pronoun_kits_updated_at_clock_count on person_pronoun_kits(updated_at_clock_count);
CREATE INDEX ix_person_pronoun_kits_updated_by_text on person_pronoun_kits(updated_by_text);

-- Pronoun-related
CREATE INDEX ix_person_pronoun_kits_subject_pronoun on person_pronoun_kits(subject_pronoun);
CREATE INDEX ix_person_pronoun_kits_object_pronoun on person_pronoun_kits(object_pronoun);
CREATE INDEX ix_person_pronoun_kits_dependent_possessive_pronoun on person_pronoun_kits(dependent_possessive_pronoun);
CREATE INDEX ix_person_pronoun_kits_independent_possessive_pronoun on person_pronoun_kits(independent_possessive_pronoun);
CREATE INDEX ix_person_pronoun_kits_reflexive_pronoun on person_pronoun_kits(reflexive_pronoun);
CREATE INDEX ix_person_pronoun_kits_intensive_pronoun on person_pronoun_kits(intensive_pronoun);
CREATE INDEX ix_person_pronoun_kits_disjunctive_pronoun on person_pronoun_kits(disjunctive_pronoun);
