CREATE TABLE plan_metric (
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
  value numeric,
  unit_id text
);

-- Metadata
CREATE INDEX ix_plan_metric_updated_at_timestamp_utc on plan_metric(updated_at_timestamp_utc);
CREATE INDEX ix_plan_metric_updated_at_clock_count on plan_metric(updated_at_clock_count);
CREATE INDEX ix_plan_metric_tenant_id on plan_metric(tenant_id);
CREATE INDEX ix_plan_metric_parent_id on plan_metric(parent_id);
CREATE INDEX ix_plan_metric_set_id on plan_metric(set_id);
CREATE INDEX ix_plan_metric_type_id on plan_metric(type_id);
CREATE INDEX ix_plan_metric_state_id on plan_metric(state_id);

-- Card
CREATE INDEX ix_plan_metric_title on plan_metric(title);

-- Main
CREATE INDEX ix_plan_metric_value on plan_metric(value);
CREATE INDEX ix_plan_metric_unit_id on plan_metric(unit_id);
