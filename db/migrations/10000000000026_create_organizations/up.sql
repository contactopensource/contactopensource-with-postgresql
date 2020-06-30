CREATE TABLE organizations (
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

  -- General-related
  parent_id uuid, -- example: 'a95af2340d7a925fa16b05ab09c6183f' is this rows's parent row
  name text, -- example: 'Acme Agency'
  emoji text, -- example: 'U+1F60A' is smiling face with smiling eyes

  -- Display-related
  image_uri text, -- example: 'https://example.com/image.jpg'
  color_hex text, -- example: 'FF0000' is red
  css_class text, -- example: 'friend' is a cascading style sheet class (a space-separated list)
  star_count int2, -- example: '5' means 5-star rating

  -- Lifetime-related
  start_date date, -- example: '2000-01-01'
  stop_date date -- example: '2099-01-01'

);

-- Programming-related
CREATE INDEX ix_organizations_tenant_id on organizations(tenant_id);
CREATE INDEX ix_organizations_type_uri on tags(type_uri);
CREATE INDEX ix_organizations_type_name on tags(type_name);
CREATE INDEX ix_organizations_state_uri on tags(state_uri);
CREATE INDEX ix_organizations_state_name on tags(state_name);

-- Update-related
CREATE INDEX ix_organizations_updated_at_timestamp_utc on organizations(updated_at_timestamp_utc);
CREATE INDEX ix_organizations_updated_at_clock_count on organizations(updated_at_clock_count);
CREATE INDEX ix_organizations_updated_by_text on organizations(updated_by_text);

-- General-related
CREATE INDEX ix_organizations_parent_id on organizations(parent_id);
CREATE INDEX ix_organizations_name on organizations(name);
CREATE INDEX ix_organizations_emoji on organizations(emoji);

-- Display-related
CREATE INDEX ix_organizations_image_uri on organizations(image_uri);
CREATE INDEX ix_organizations_color_hex on organizations(color_hex);
CREATE INDEX ix_organizations_css_class on organizations(css_class);
CREATE INDEX ix_organizations_star_count on organizations(star_count);

-- Lifetime-related
CREATE INDEX ix_organizations_start_date on organizations(start_date);
CREATE INDEX ix_organizations_stop_date on organizations(stop_date);
