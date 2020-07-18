CREATE TABLE contact_email (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Email-related
  address text, -- example: 'Alice Adams <alice@example.com>' -- see https://tools.ietf.org/html/rfc5322
  display_name text, -- example: 'Alice Adams'
  addr_spec text -- example: 'alice@example.com'
);

-- Metadata
CREATE INDEX ix_contact_email_updated_at_timestamp_utc on contact_email(updated_at_timestamp_utc);
CREATE INDEX ix_contact_email_updated_at_clock_count on contact_email(updated_at_clock_count);
CREATE INDEX ix_contact_email_tenant_id on contact_email(tenant_id);
CREATE INDEX ix_contact_email_parent_id on contact_email(parent_id);
CREATE INDEX ix_contact_email_set_id on contact_email(set_id);
CREATE INDEX ix_contact_email_type_id on contact_email(type_id);
CREATE INDEX ix_contact_email_state_id on contact_email(state_id);

-- Email-related
CREATE INDEX ix_contact_email_address on contact_email(address);
CREATE INDEX ix_contact_email_display_name on contact_email(display_name);
CREATE INDEX ix_contact_email_addr_spec on contact_email(addr_spec);
