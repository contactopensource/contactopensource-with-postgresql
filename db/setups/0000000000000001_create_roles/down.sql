----
-- Remove any remaining role capabiltiies.
--
-- Before you run this down migration, you will most likely want to run 
-- the down migration that removes all the role privileges.
--
-- If you get this kind of error message:
--
--     ERROR:  role "contact_leader" cannot 
--     be dropped because some objects depend on it
--
-- Then one way to solve it is to reassign ownership:
--
--    REASSIGN OWNED BY contact_leader TO postgres;
----

DROP OWNED BY contact_leader;
DROP ROLE contact_leader;

DROP OWNED BY contact_reader;
DROP ROLE contact_reader;

DROP OWNED BY contact_writer;
DROP ROLE contact_writer;
