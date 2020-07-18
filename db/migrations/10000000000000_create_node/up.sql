CREATE TABLE node (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Node-related -- the intent is to describe the content fields below.
  uri text, -- example: 'https://example.com/example.txt'
  text text, -- example: 'hello world'
  json jsonb, -- example: '{"hello": "world"}'
  xml xml, -- example: '<?xml version=\'1.0\'?><example>hello world</example>'
  number numeric(20,9) -- example: 1234.5678
);

-- Metadata
CREATE INDEX ix_node_updated_at_timestamp_utc on node(updated_at_timestamp_utc);
CREATE INDEX ix_node_updated_at_clock_count on node(updated_at_clock_count);
CREATE INDEX ix_node_tenant_id on node(tenant_id);
CREATE INDEX ix_node_parent_id on node(parent_id);
CREATE INDEX ix_node_set_id on node(set_id);
CREATE INDEX ix_node_type_id on node(type_id);
CREATE INDEX ix_node_state_id on node(state_id);

-- Node-related
CREATE INDEX ix_node_uri on node(uri);
CREATE INDEX ix_node_text on node(text);
CREATE INDEX ix_node_json on node(json);
CREATE INDEX ix_node_xml on node USING BTREE (cast(xpath('/', xml) as text[]));
CREATE INDEX ix_node_number on node(number);
