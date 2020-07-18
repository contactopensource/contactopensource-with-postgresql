CREATE TABLE organization (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- General-related
  name text, -- example: 'Acme Agency'
  emoji text, -- example: 'U+1F60A' is smiling face with smiling eyes

  -- Display-related
  image_uri text, -- example: 'https://example.com/image.jpg'
  color_hex text, -- example: 'FF0000' is red
  cs_class text, -- example: 'friend' is a cascading style sheet clas (a space-separated list)
  star_count int2, -- example: '5' means 5-star rating

  -- Lifetime-related
  start_date date, -- example: '2000-01-01'
  stop_date date -- example: '2099-01-01'

);

-- Metadata
CREATE INDEX ix_organization_updated_at_timestamp_utc on organization(updated_at_timestamp_utc);
CREATE INDEX ix_organization_updated_at_clock_count on organization(updated_at_clock_count);
CREATE INDEX ix_organization_tenant_id on organization(tenant_id);
CREATE INDEX ix_organization_parent_id on organization(parent_id);
CREATE INDEX ix_organization_set_id on organization(set_id);
CREATE INDEX ix_organization_type_id on organization(type_id);
CREATE INDEX ix_organization_state_id on organization(state_id);

-- General-related
CREATE INDEX ix_organization_name on organization(name);
CREATE INDEX ix_organization_emoji on organization(emoji);

-- Display-related
CREATE INDEX ix_organization_image_uri on organization(image_uri);
CREATE INDEX ix_organization_color_hex on organization(color_hex);
CREATE INDEX ix_organization_cs_class on organization(cs_class);
CREATE INDEX ix_organization_star_count on organization(star_count);

-- Lifetime-related
CREATE INDEX ix_organization_start_date on organization(start_date);
CREATE INDEX ix_organization_stop_date on organization(stop_date);
