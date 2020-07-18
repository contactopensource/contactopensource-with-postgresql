CREATE TABLE offer (
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
CREATE INDEX ix_offer_updated_at_timestamp_utc on offer(updated_at_timestamp_utc);
CREATE INDEX ix_offer_updated_at_clock_count on offer(updated_at_clock_count);
CREATE INDEX ix_offer_tenant_id on offer(tenant_id);
CREATE INDEX ix_offer_parent_id on offer(parent_id);
CREATE INDEX ix_offer_set_id on offer(set_id);
CREATE INDEX ix_offer_type_id on offer(type_id);
CREATE INDEX ix_offer_state_id on offer(state_id);

-- Media-related
CREATE INDEX ix_offer_name on offer(name);
