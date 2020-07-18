CREATE TABLE person_pronoun_kit (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Pronoun-related
  subject_pronoun text, -- example: 'she' as in 'She likes Alice.'; see: https://wikipedia.org/wiki/Subject_pronoun
  object_pronoun text, -- example: 'her' as in 'Alice likes her.'; see: https://wikipedia.org/wiki/Object_pronoun
  dependent_possessive_pronoun text, -- example: 'her' as in 'Her ideas are good.'; see: https://wikipedia.org/wiki/Possessive_pronoun
  independent_possessive_pronoun text, -- example: 'hers' as in 'The ideas are hers.'; see: https://wikipedia.org/wiki/Possessive_determiner
  reflexive_pronoun text, -- example: 'herself' as in 'She likes herself'; see https://wikipedia.org/wiki/Reflexive_pronoun
  intensive_pronoun text, -- example: 'herself' as in 'She does it herself.'; see: https://en.wikipedia.org/wiki/Intensive_pronoun
  disjunctive_pronoun text -- example: 'her' as in 'It is her.'; see https://wikipedia.org/wiki/Disjunctive_pronoun
);

-- Metadata
CREATE INDEX ix_person_pronoun_kit_updated_at_timestamp_utc on person_pronoun_kit(updated_at_timestamp_utc);
CREATE INDEX ix_person_pronoun_kit_updated_at_clock_count on person_pronoun_kit(updated_at_clock_count);
CREATE INDEX ix_person_pronoun_kit_tenant_id on person_pronoun_kit(tenant_id);
CREATE INDEX ix_person_pronoun_kit_parent_id on person_pronoun_kit(parent_id);
CREATE INDEX ix_person_pronoun_kit_set_id on person_pronoun_kit(set_id);
CREATE INDEX ix_person_pronoun_kit_type_id on person_pronoun_kit(type_id);
CREATE INDEX ix_person_pronoun_kit_state_id on person_pronoun_kit(state_id);

-- Pronoun-related
CREATE INDEX ix_person_pronoun_kit_subject_pronoun on person_pronoun_kit(subject_pronoun);
CREATE INDEX ix_person_pronoun_kit_object_pronoun on person_pronoun_kit(object_pronoun);
CREATE INDEX ix_person_pronoun_kit_dependent_possessive_pronoun on person_pronoun_kit(dependent_possessive_pronoun);
CREATE INDEX ix_person_pronoun_kit_independent_possessive_pronoun on person_pronoun_kit(independent_possessive_pronoun);
CREATE INDEX ix_person_pronoun_kit_reflexive_pronoun on person_pronoun_kit(reflexive_pronoun);
CREATE INDEX ix_person_pronoun_kit_intensive_pronoun on person_pronoun_kit(intensive_pronoun);
CREATE INDEX ix_person_pronoun_kit_disjunctive_pronoun on person_pronoun_kit(disjunctive_pronoun);
