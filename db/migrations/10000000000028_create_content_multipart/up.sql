CREATE TABLE content_multipart (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Main
  name text
);

-- Metadata
CREATE INDEX ix_content_multipart_updated_at_timestamp_utc on content_multipart(updated_at_timestamp_utc);
CREATE INDEX ix_content_multipart_updated_at_clock_count on content_multipart(updated_at_clock_count);
CREATE INDEX ix_content_multipart_tenant_id on content_multipart(tenant_id);
CREATE INDEX ix_content_multipart_parent_id on content_multipart(parent_id);
CREATE INDEX ix_content_multipart_set_id on content_multipart(set_id);
CREATE INDEX ix_content_multipart_type_id on content_multipart(type_id);
CREATE INDEX ix_content_multipart_state_id on content_multipart(state_id);

-- Media-related
CREATE INDEX ix_content_multipart_name on content_multipart(name);
