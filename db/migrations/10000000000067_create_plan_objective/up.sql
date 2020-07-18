CREATE TABLE plan_objective (
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
  saga text
);

-- Metadata
CREATE INDEX ix_plan_objective_updated_at_timestamp_utc on plan_objective(updated_at_timestamp_utc);
CREATE INDEX ix_plan_objective_updated_at_clock_count on plan_objective(updated_at_clock_count);
CREATE INDEX ix_plan_objective_tenant_id on plan_objective(tenant_id);
CREATE INDEX ix_plan_objective_parent_id on plan_objective(parent_id);
CREATE INDEX ix_plan_objective_set_id on plan_objective(set_id);
CREATE INDEX ix_plan_objective_type_id on plan_objective(type_id);
CREATE INDEX ix_plan_objective_state_id on plan_objective(state_id);

-- Card
CREATE INDEX ix_plan_objective_title on plan_objective(title);
