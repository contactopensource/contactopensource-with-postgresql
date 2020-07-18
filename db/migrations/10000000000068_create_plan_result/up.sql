CREATE TABLE plan_result (
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
  plan_metric_id text
);

-- Metadata
CREATE INDEX ix_plan_result_updated_at_timestamp_utc on plan_result(updated_at_timestamp_utc);
CREATE INDEX ix_plan_result_updated_at_clock_count on plan_result(updated_at_clock_count);
CREATE INDEX ix_plan_result_tenant_id on plan_result(tenant_id);
CREATE INDEX ix_plan_result_parent_id on plan_result(parent_id);
CREATE INDEX ix_plan_result_set_id on plan_result(set_id);
CREATE INDEX ix_plan_result_type_id on plan_result(type_id);
CREATE INDEX ix_plan_result_state_id on plan_result(state_id);

-- Card
CREATE INDEX ix_plan_result_title on plan_result(title);

-- Main
CREATE INDEX ix_plan_result_metric_id on plan_result(metric_id);
