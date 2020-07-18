CREATE TABLE contact_postal (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Postal-related
  country_text text, -- example: 'US' is United States
  region_text text, -- example: 'CA' is California (a.k.a. United States state, Canada province, etc.)
  locality_text text, -- example: 'San Francisco' (a.k.a. city, town, etc.)
  neighborhood_text text, -- example: 'Mission District' (a.k.a. city area, town zone, etc.)
  postal_code_text text, -- example: '94101' is San Francisco downtown area (a.k.a. United States ZIP code, Cananda mail routing number, etc.)
  street_addres_text text, -- example: '123 Main Street'
  premise_addres_text text, -- example: 'Apartment A1' (a.k.a. room name, box number, etc.)
  global_location_number_text text -- see: https://schema.org/globalLocationNumber https://en.wikipedia.org/wiki/Global_Location_Number
);

-- Metadata
CREATE INDEX ix_contact_postal_updated_at_timestamp_utc on contact_postal(updated_at_timestamp_utc);
CREATE INDEX ix_contact_postal_updated_at_clock_count on contact_postal(updated_at_clock_count);
CREATE INDEX ix_contact_postal_tenant_id on contact_postal(tenant_id);
CREATE INDEX ix_contact_postal_parent_id on contact_postal(parent_id);
CREATE INDEX ix_contact_postal_set_id on contact_postal(set_id);
CREATE INDEX ix_contact_postal_type_id on contact_postal(type_id);
CREATE INDEX ix_contact_postal_state_id on contact_postal(state_id);

-- Postal-related
CREATE INDEX ix_contact_postal_country_text on contact_postal(country_text);
CREATE INDEX ix_contact_postal_region_text on contact_postal(region_text);
CREATE INDEX ix_contact_postal_locality_text on contact_postal(locality_text);
CREATE INDEX ix_contact_postal_neighborhood_text on contact_postal(neighborhood_text);
CREATE INDEX ix_contact_postal_postal_code_text on contact_postal(postal_code_text);
CREATE INDEX ix_contact_postal_street_addres_text on contact_postal(street_addres_text);
CREATE INDEX ix_contact_postal_premise_addres_text on contact_postal(premise_addres_text);
CREATE INDEX ix_contact_postal_global_location_number_text on contact_postal(global_location_number_text);
