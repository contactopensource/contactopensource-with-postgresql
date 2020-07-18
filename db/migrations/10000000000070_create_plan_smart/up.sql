CREATE TABLE plan_smart (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Card
  title text,
  subtitle text,
  summary text,
  saga text,

  -- Main
  specific text,
  measurable text,
  actionable text,
  relevant text,
  timely text
);

-- Metadata
CREATE INDEX ix_plan_smart_updated_at_timestamp_utc on plan_smart(updated_at_timestamp_utc);
CREATE INDEX ix_plan_smart_updated_at_clock_count on plan_smart(updated_at_clock_count);
CREATE INDEX ix_plan_smart_tenant_id on plan_smart(tenant_id);
CREATE INDEX ix_plan_smart_parent_id on plan_smart(parent_id);
CREATE INDEX ix_plan_smart_set_id on plan_smart(set_id);
CREATE INDEX ix_plan_smart_type_id on plan_smart(type_id);
CREATE INDEX ix_plan_smart_state_id on plan_smart(state_id);

-- Card
CREATE INDEX ix_plan_smart_title on plan_smart(title);
