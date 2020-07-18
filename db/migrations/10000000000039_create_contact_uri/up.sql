CREATE TABLE contact_uri (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- URI-related
  label text, -- example: 'Example web page'
  text text, -- example: 'http://example.com/index.html?a=b&c=d#e'
  scheme text, -- example: 'http'
  authority text, -- example: ''
  path text, -- example: 'example.com/index.html'
  query text, -- example: 'a=b&c=d'
  fragment text -- example: 'e'
);

-- Metadata
CREATE INDEX ix_contact_uri_updated_at_timestamp_utc on contact_uri(updated_at_timestamp_utc);
CREATE INDEX ix_contact_uri_updated_at_clock_count on contact_uri(updated_at_clock_count);
CREATE INDEX ix_contact_uri_tenant_id on contact_uri(tenant_id);
CREATE INDEX ix_contact_uri_parent_id on contact_uri(parent_id);
CREATE INDEX ix_contact_uri_set_id on contact_uri(set_id);
CREATE INDEX ix_contact_uri_type_id on contact_uri(type_id);
CREATE INDEX ix_contact_uri_state_id on contact_uri(state_id);

-- URI-related
CREATE INDEX ix_uri_label on uri(label);
CREATE INDEX ix_uri_text on uri(text);
CREATE INDEX ix_uri_scheme on uri(scheme);
CREATE INDEX ix_uri_authority on uri(authority);
CREATE INDEX ix_uri_path on uri(path);
CREATE INDEX ix_uri_query on uri(query);
CREATE INDEX ix_uri_fragment on uri(fragment);
