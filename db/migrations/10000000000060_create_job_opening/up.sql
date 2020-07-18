CREATE TABLE job_opening (
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
CREATE INDEX ix_job_opening_updated_at_timestamp_utc on job_opening(updated_at_timestamp_utc);
CREATE INDEX ix_job_opening_updated_at_clock_count on job_opening(updated_at_clock_count);
CREATE INDEX ix_job_opening_tenant_id on job_opening(tenant_id);
CREATE INDEX ix_job_opening_parent_id on job_opening(parent_id);
CREATE INDEX ix_job_opening_set_id on job_opening(set_id);
CREATE INDEX ix_job_opening_type_id on job_opening(type_id);
CREATE INDEX ix_job_opening_state_id on job_opening(state_id);

-- Media-related
CREATE INDEX ix_job_opening_name on job_opening(name);
