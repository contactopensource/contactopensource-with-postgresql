INSERT INTO person_pronoun_kits VALUES

-- Example: she, her, etc.
(
  'cc1143129505d87f5f0a044b7dbef236', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Pronoun-related
  'she', -- subject_pronoun
  'her', -- object_pronoun
  'her', -- dependent_possessive_pronoun
  'hers', -- independent_possessive_pronoun
  'herself', -- reflexive_pronoun
  'herself', -- intensive_pronoun
  'her' -- disjunctive_pronoun
),

-- Example: he, him, etc.
(
  'b16790a15e769541cd1b81ca4fe33a72', -- id
  TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), -- updated_at_timestamp_utc
  0, -- updated_at_clock_count
  '', -- tenant_id
  '', -- parent_id
  '', -- set_id
  '', -- type_id
  '', -- state_id

  -- Pronoun-related
  'he', -- subject_pronoun
  'him', -- object_pronoun
  'his', -- dependent_possessive_pronoun
  'his', -- independent_possessive_pronoun
  'himself', -- reflexive_pronoun
  'himself', -- intensive_pronoun
  'him' -- disjunctive_pronoun
);
