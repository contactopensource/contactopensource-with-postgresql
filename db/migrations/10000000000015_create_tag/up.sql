CREATE TABLE tag (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Tag-related
  text text, -- example: 'trending'
  description text -- example: 'Trending in popularity'
);

-- Metadata
CREATE INDEX ix_tag_updated_at_timestamp_utc on tag(updated_at_timestamp_utc);
CREATE INDEX ix_tag_updated_at_clock_count on tag(updated_at_clock_count);
CREATE INDEX ix_tag_tenant_id on tag(tenant_id);
CREATE INDEX ix_tag_parent_id on tag(parent_id);
CREATE INDEX ix_tag_set_id on tag(set_id);
CREATE INDEX ix_tag_type_id on tag(type_id);
CREATE INDEX ix_tag_state_id on tag(state_id);

-- General-related
CREATE INDEX ix_tag_text on tag(text);
CREATE INDEX ix_tag_description on tag(description);
