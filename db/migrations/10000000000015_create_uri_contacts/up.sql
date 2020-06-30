CREATE TABLE uris (
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

  -- URI-related
  label text, -- example: 'Example web page'
  text text, -- example: 'http://example.com/index.html?a=b&c=d#e'
  scheme text, -- example: 'http'
  authority text, -- example: ''
  path text, -- example: 'example.com/index.html'
  query text, -- example: 'a=b&c=d'
  fragment text -- example: 'e'
);

-- Programming-related
CREATE INDEX ix_uris_tenant_id on uris(tenant_id);
CREATE INDEX ix_uris_type_uri on uris(type_uri);
CREATE INDEX ix_uris_type_name on uris(type_name);
CREATE INDEX ix_uris_state_uri on uris(state_uri);
CREATE INDEX ix_uris_state_name on uris(state_name);

-- Update-related
CREATE INDEX ix_uris_updated_at_timestamp_utc on uris(updated_at_timestamp_utc);
CREATE INDEX ix_uris_updated_at_clock_count on uris(updated_at_clock_count);
CREATE INDEX ix_uris_updated_by_text on uris(updated_by_text);

-- URI-related
CREATE INDEX ix_uris_label on uris(label);
CREATE INDEX ix_uris_text on uris(text);
CREATE INDEX ix_uris_scheme on uris(scheme);
CREATE INDEX ix_uris_authority on uris(authority);
CREATE INDEX ix_uris_path on uris(path);
CREATE INDEX ix_uris_query on uris(query);
CREATE INDEX ix_uris_fragment on uris(fragment);
