-- This 'edges' table is a kind of linking table with special capabilties.
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

CREATE TABLE edges (
  id uuid not null primary key,

  -- Programming-related
  tenant_id uuid, -- for optional multi-tenant installation
  type_uri text, -- for optional type reference
  type_name text, -- for optional single table inheritance
  state_uri text, -- for optional state reference
  state_name text, -- for optional state machine transition

  -- Update-related
  updated_at_timestamp_utc timestamp, -- example: 2020-01-01T00:00:00 always UTC
  updated_at_clock_count bigint, -- example: 123456789 as suitable for a vector clock
  updated_by_text text, -- example: explanation of who updated the contact, why, how, etc.

  -- Subject
  subject_uri text, -- example: http://example.com/alpha.html
  subject_database text, -- database table name; example: 'contact'
  subject_schema text, -- database table name; example: 'public'
  subject_table text, -- database table name; example: 'persons'
  subject_id uuid, -- database row id; example: 34b75621921fdc7ac83459c5c4b7dba6

  -- Predicate
  predicate_uri text, -- example: http://example.com/bravo.html
  predicate_database text, -- database table name; example: 'contact'
  predicate_schema text, -- database table name; example: 'public'
  predicate_table text, -- database table name; example: 'likes'
  predicate_id uuid, -- database row id; example: 124cf87662601612ae47379c91876e1e

  -- Object
  object_uri text, -- example: http://example.com/charlie.html
  object_database text, -- database table name; example: 'contact'
  object_schema text, -- database table name; example: 'public'
  object_table text, -- database table name; example: 'orgs'
  object_id uuid, -- database row id; example: 9588686d2a1b4cda40cad5269c87a627

  -- Lifecycle
  start_at_timestamp_utc timestamp,
  stop_at_timestamp_utc timestamp,

  -- Modifiers
  count bigint, -- count, such as an instance index; example: 10 means count 10
  weight numeric(10,9), -- weight, -1 to 1 inclusive; example: 0.1 means weight 10%
  unit_interval numeric(10,9), -- unit interval, 0 to 1 inclusive; example: 0.1 means unit interval 10%
  dual_interval numeric(10,9) -- dual interval, -1 to 1 inclusive; example: -0.1 means dual interval -10%
);

-- Programming-related
CREATE INDEX ix_edges_tenant_id on edges(tenant_id);
CREATE INDEX ix_edges_type_uri on edges(type_uri);
CREATE INDEX ix_edges_type_name on edges(type_name);
CREATE INDEX ix_edges_state_uri on edges(state_uri);
CREATE INDEX ix_edges_state_name on edges(state_name);

-- Update-related
CREATE INDEX ix_edges_updated_at_timestamp_utc on edges(updated_at_timestamp_utc);
CREATE INDEX ix_edges_updated_at_clock_count on edges(updated_at_clock_count);
CREATE INDEX ix_edges_updated_by_text on edges(updated_by_text);

-- Subject
CREATE INDEX ix_edges_subject_uri on edges(subject_uri);
CREATE INDEX ix_edges_subject_database on edges(subject_database);
CREATE INDEX ix_edges_subject_schema on edges(subject_schema);
CREATE INDEX ix_edges_subject_table on edges(subject_table);
CREATE INDEX ix_edges_subject_id on edges(subject_id);

-- Predicate
CREATE INDEX ix_edges_predicate_uri on edges(predicate_uri);
CREATE INDEX ix_edges_predicate_database on edges(predicate_database);
CREATE INDEX ix_edges_predicate_schema on edges(predicate_schema);
CREATE INDEX ix_edges_predicate_table on edges(predicate_table);
CREATE INDEX ix_edges_predicate_id on edges(predicate_id);

-- Object
CREATE INDEX ix_edges_object_uri on edges(object_uri);
CREATE INDEX ix_edges_object_database on edges(object_database);
CREATE INDEX ix_edges_object_schema on edges(object_schema);
CREATE INDEX ix_edges_object_table on edges(object_table);
CREATE INDEX ix_edges_object_id on edges(object_id);

-- Lifecycle
CREATE INDEX ix_edges_start_at_timestamp_utc on edges(start_at_timestamp_utc);
CREATE INDEX ix_edges_stop_at_timestamp_utc on edges(stop_at_timestamp_utc);

-- Modifiers
CREATE INDEX ix_edges_count on edges(count);
CREATE INDEX ix_edges_weight on edges(weight);
CREATE INDEX ix_edges_unit_interval on edges(unit_interval);
CREATE INDEX ix_edges_dual_interval on edges(dual_interval);
