-- This 'edge' table is a kind of linking table with special capabilties.
-- An edge row can associate up to three concepts: subject, predicate, object.
--
-- This kind of association has similarities to a data "semantic triple",
-- and the metadata data model Resource Description Framework (RDF).
--
--   * See https://en.wikipedia.org/wiki/Semantic_triple
--
--   * See https://en.wikipedia.org/wiki/Resource_Description_Framework
--
-- Each concept can be a either a URI or a database table name and row id.
-- This enables links similar to RDF triples or polymorphic joins.
--
-- For example, link two URIs anywhere on the internet, such as two people:
--
--   * subject_uri: http://example.com/alice-adams.html
--
--   * object_uri: http://example.com/bob-brown.html
-- 
-- For example, link from a person's information in this database schema
-- to an organization's information in this database schema:
--
--    * subject_table: persons
--
--    * subject_id: 34b75621921fdc7ac83459c5c4b7dba6
--
--    * object_table: orgs
--
--    * object_id: 9588686d2a1b4cda40cad5269c87a627
--
-- For example, link a person in this database schema to an external URI:
--
--    * subject_table: persons
--
--    * subject_id: 34b75621921fdc7ac83459c5c4b7dba6
--
--    * object_uri: http://example.com/bob-brown.html
--
-- Each edge row must have a subject and object. 
--
-- Each edge row may have a predicate, which is a way to describe the type
-- of relationship. Common examples we use are "like", "follow", "favorite".
--
-- This table has a goal to be fully workable with RDF concepts.
--
-- If possible, this table will be improved to use a better way of 
-- linking to internal data. For example, we would prefer to phase out
-- the individual fields for table name and row id, and instead simply
-- use the URI fields along with a URI that points to internal data.
-- Currently, many tools and frameworks expect separate fields for
-- the table name and row id, such as to do poly-to-poly joins.

CREATE TABLE edge (
  id text not null primary key,
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  tenant_id text, -- for optional tenant, such as a multi-tenant installation
  parent_id text, -- for optional parent, such as a parent-child relationship
  set_id text, -- for optional set, such as namespacing
  type_id text, -- for optional type, such as single table inheritance
  state_id text, -- for optional state, such as a state machine

  -- Subject
  subject_uri text, -- example: http://example.com/alpha.html
  subject_database text, -- data database name; example: 'contact'
  subject_schema text, -- data schema name; example: 'public'
  subject_table text, -- data table name; example: 'persons'
  subject_id text, -- data row id; example: 34b75621921fdc7ac83459c5c4b7dba6

  -- Predicate
  predicate_uri text, -- example: http://example.com/bravo.html
  predicate_database text, -- data database name; example: 'contact'
  predicate_schema text, -- data schema name; example: 'public'
  predicate_table text, -- data table name; example: 'likes'
  predicate_id text, -- data row id; example: 124cf87662601612ae47379c91876e1e

  -- Object
  object_uri text, -- example: http://example.com/charlie.html
  object_database text, -- database table name; example: 'contact'
  object_schema text, -- database table name; example: 'public'
  object_table text, -- database table name; example: 'orgs'
  object_id text, -- database row id; example: 9588686d2a1b4cda40cad5269c87a627

  -- Lifecycle
  start_at_timestamp_utc timestamp,
  stop_at_timestamp_utc timestamp,

  -- Modifiers
  count bigint, -- count, such as an instance index; example: 10 means count 10
  unit_interval numeric(10,9), -- unit interval, 0 to 1 inclusive; example: 0.1 means unit interval 10%
  dual_interval numeric(10,9) -- dual interval, -1 to 1 inclusive; example: -0.1 means dual interval -10%
);

-- Metadata
CREATE INDEX ix_edge_updated_at_timestamp_utc on edge(updated_at_timestamp_utc);
CREATE INDEX ix_edge_updated_at_clock_count on edge(updated_at_clock_count);
CREATE INDEX ix_edge_tenant_id on edge(tenant_id);
CREATE INDEX ix_edge_parent_id on edge(parent_id);
CREATE INDEX ix_edge_set_id on edge(set_id);
CREATE INDEX ix_edge_type_id on edge(type_id);
CREATE INDEX ix_edge_state_id on edge(state_id);

-- Subject
CREATE INDEX ix_edge_subject_uri on edge(subject_uri);
CREATE INDEX ix_edge_subject_database on edge(subject_database);
CREATE INDEX ix_edge_subject_schema on edge(subject_schema);
CREATE INDEX ix_edge_subject_table on edge(subject_table);
CREATE INDEX ix_edge_subject_id on edge(subject_id);

-- Predicate
CREATE INDEX ix_edge_predicate_uri on edge(predicate_uri);
CREATE INDEX ix_edge_predicate_database on edge(predicate_database);
CREATE INDEX ix_edge_predicate_schema on edge(predicate_schema);
CREATE INDEX ix_edge_predicate_table on edge(predicate_table);
CREATE INDEX ix_edge_predicate_id on edge(predicate_id);

-- Object
CREATE INDEX ix_edge_object_uri on edge(object_uri);
CREATE INDEX ix_edge_object_database on edge(object_database);
CREATE INDEX ix_edge_object_schema on edge(object_schema);
CREATE INDEX ix_edge_object_table on edge(object_table);
CREATE INDEX ix_edge_object_id on edge(object_id);

-- Lifecycle
CREATE INDEX ix_edge_start_at_timestamp_utc on edge(start_at_timestamp_utc);
CREATE INDEX ix_edge_stop_at_timestamp_utc on edge(stop_at_timestamp_utc);

-- Modifiers
CREATE INDEX ix_edge_count on edge(count);
CREATE INDEX ix_edge_unit_interval on edge(unit_interval);
CREATE INDEX ix_edge_dual_interval on edge(dual_interval);
