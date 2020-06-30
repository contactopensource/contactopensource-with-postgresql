----
-- Revoke privileges.
-----

-- For role contact_leader
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA contact.public FROM contact_leader;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA contact.public FROM contact_leader;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA contact.public FROM contact_leader;
REVOKE USAGE ON SCHEMA contact.public FROM contact_leader;
REVOKE ALL PRIVILEGES ON DATABASE contact FROM contact_leader;

-- For role contact_reader
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA contact.public FROM contact_reader;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA contact.public FROM contact_reader;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA contact.public FROM contact_reader;
REVOKE USAGE ON SCHEMA contact.public FROM contact_reader;
REVOKE ALL PRIVILEGES ON DATABASE contact FROM contact_reader;

-- For role contact_writer
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA contact.public FROM contact_writer;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA contact.public FROM contact_writer;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA contact.public FROM contact_writer;
REVOKE USAGE ON SCHEMA contact.public FROM contact_writer;
REVOKE ALL PRIVILEGES ON DATABASE contact FROM contact_writer;
