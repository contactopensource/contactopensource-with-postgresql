---
-- Create roles.
--
-- We create these roles:
--
--   * contact_leader (for full access)
--
--   * contact_reader (for read-only access)
--
--   * contact_writer (for write-only access)
--
-- You should definitely change the passwords.
---

CREATE ROLE contact_leader WITH LOGIN ENCRYPTED PASSWORD 'secret';
CREATE ROLE contact_reader WITH LOGIN ENCRYPTED PASSWORD 'secret';
CREATE ROLE contact_writer WITH LOGIN ENCRYPTED PASSWORD 'secret';
