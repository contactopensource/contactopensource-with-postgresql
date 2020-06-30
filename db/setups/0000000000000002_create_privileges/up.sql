----
-- Grant privileges.
--
-- We create these kinds of privileges:
--
--   * The leader role has full access.
--
--   * The reader role has read-only access.
--
--   * The writer role has read-only access.
----

-- For leader role
GRANT ALL PRIVILEGES ON DATABASE contact TO contact_leader;

-- For reader role
GRANT CONNECT ON DATABASE contact TO contact_reader;
GRANT USAGE ON SCHEMA public TO contact_reader;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO contact_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO contact_reader;

-- For writer role
GRANT CONNECT ON DATABASE contact TO contact_writer;
GRANT USAGE ON SCHEMA public TO contact_writer;
GRANT CREATE ON ALL TABLES IN SCHEMA public TO contact_writer;
GRANT UPDATE ON ALL TABLES IN SCHEMA public TO contact_writer;
GRANT DELETE ON ALL TABLES IN SCHEMA public TO contact_writer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT CREATE ON TABLES TO contact_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT UPDATE ON TABLES TO contact_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT DELETE ON TABLES TO contact_reader;

