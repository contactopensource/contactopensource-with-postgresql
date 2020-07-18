-- Media types are also known and MIME types.
--
-- See https://en.wikipedia.org/wiki/Media_type
--
-- This table is baed on IANA media type standard.
--
-- Examples:
--
--     text/plain
--     image/jpg
--
-- Example tree media_types:
--
--     application/x.foo (the 'x' tree means unregistered)
--     application/vnd.foo (the 'vnd' tree means vendor)
--
-- Example suffix media_types:
--
--     application/foo+json (the '+json' means JSON format)
--     application/foo+xml (the '+xml' means XML format)
--
-- Example parameter media_types:
--
--     charset=UTF-8
--     boundary=something
--
-- Example that uses all of the above:
--
--     application/x.foo+json;charset=UTF-8;boundary=something
--
CREATE TABLE media_type (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Media-related
  text text, -- example: 'application/x.foo;charset=UTF-8'
  supertype text, -- example: 'text'
  subtype text, -- example 'plain'
  tree text, -- example: 'x.' means unregistered
  suffix text, -- example: '+zip' means ZIP compressed file
  parameters text[] -- example: 'charset=UTF-8',

);

-- Metadata
CREATE INDEX ix_media_type_updated_at_timestamp_utc on media_type(updated_at_timestamp_utc);
CREATE INDEX ix_media_type_updated_at_clock_count on media_type(updated_at_clock_count);
CREATE INDEX ix_media_type_tenant_id on media_type(tenant_id);
CREATE INDEX ix_media_type_parent_id on media_type(parent_id);
CREATE INDEX ix_media_type_set_id on media_type(set_id);
CREATE INDEX ix_media_type_type_id on media_type(type_id);
CREATE INDEX ix_media_type_state_id on media_type(state_id);

-- Media-related
CREATE INDEX ix_media_type_text on media_type(text);
CREATE INDEX ix_media_type_supertype on media_type(supertype);
CREATE INDEX ix_media_type_subtype on media_type(subtype);
CREATE INDEX ix_media_type_tree on media_type(tree);
CREATE INDEX ix_media_type_suffix on media_type(suffix);
CREATE INDEX ix_media_type_parameters on media_type(parameters);
