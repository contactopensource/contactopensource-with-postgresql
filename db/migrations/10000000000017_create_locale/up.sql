CREATE TABLE locale (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Code-related
  text text, -- example: 'en-US' is English language in United States country
  language_code text, -- example: 'en' is English
  country_code text, -- example: 'US' is United States
  script_code text, -- example: 'Latn' is Latin script; see http://www.unicode.org/iso15924/codelists.html
  region_code text, -- example: 'QO' is Outlying Oceania
  variant_code text, -- example: 'TH' is Thai digit shapes

  -- Representation-related
  decimal_separator text, -- example: '.' is the decimal separator of 'en-US'; see https://en.wikipedia.org/wiki/Decimal_separator
  grouping_separator text, -- example: ',' is the grouping separator of 'en-US'
  currency_code text, -- example: 'USD' is United States Dollar
  currency_symbol text, -- example: '$' is United States Dollar
  quotation_start_delimiter text, -- example: '“' (U+201C) is left double quotation mark
  quotation_stop_delimiter text -- example:   

  -- TODO
  -- calendar: Calendar? -- The calendar for the locale, or the Gregorian calendar as a fallback.
  -- exemplar_character_set: CharacterSet? -- The exemplar character set for the locale, or nil if has none.
  -- collation_dentifier: String? -- The collation identifier for the locale, or nil if it has none.
  -- collator_identifier: String? -- The collator identifier of the locale.
  -- usesMetricSystem: Bool -- A Boolean that is true if the locale uses the metric system.
);

-- Metadata
CREATE INDEX ix_locale_updated_at_timestamp_utc on locale(updated_at_timestamp_utc);
CREATE INDEX ix_locale_updated_at_clock_count on locale(updated_at_clock_count);
CREATE INDEX ix_locale_tenant_id on locale(tenant_id);
CREATE INDEX ix_locale_parent_id on locale(parent_id);
CREATE INDEX ix_locale_set_id on locale(set_id);
CREATE INDEX ix_locale_type_id on locale(type_id);
CREATE INDEX ix_locale_state_id on locale(state_id);

-- locale-related
CREATE INDEX ix_locale_text on locale(text);
CREATE INDEX ix_locale_language_code on locale(language_code);
CREATE INDEX ix_locale_country_code on locale(country_code);
CREATE INDEX ix_locale_script_code on locale(script_code);
CREATE INDEX ix_locale_region_code on locale(region_code);
CREATE INDEX ix_locale_variant_code on locale(variant_code);
