
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
-- Example tree nodes:
--
--     application/x.foo (the 'x' tree means unregistered)
--     application/vnd.foo (the 'vnd' tree means vendor)
--
-- Example suffix nodes:
--
--     application/foo+json (the '+json' means JSON format)
--     application/foo+xml (the '+xml' means XML format)
--
-- Example parameter nodes:
--
--     charset=UTF-8
--     boundary=something
--
-- Example that uses all of the above:
--
--     application/x.foo+json;charset=UTF-8;boundary=something
--
CREATE TABLE units (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  typecast text, -- for optional single table inheritance
  state text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Unit-related
  name text, -- example: 'gram'
  symbol text, -- example: 'g'

);

-- Programming-related
CREATE INDEX ix_units_tenant_id on units(tenant_id);
CREATE INDEX ix_units_typecast on units(typecast);
CREATE INDEX ix_units_state on units(state);

-- Update-related
CREATE INDEX ix_units_updated_at_timestamp_utc on units(updated_at_timestamp_utc);
CREATE INDEX ix_units_updated_at_clock_count on units(updated_at_clock_count);
CREATE INDEX ix_units_updated_by_text on units(updated_by_text);

-- Media-related
CREATE INDEX ix_units_name on units(name);
CREATE INDEX ix_units_symbol on units(symbol);
