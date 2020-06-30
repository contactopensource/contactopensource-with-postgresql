#!/bin/sh

##
# Test migrations
#
# Setup: set an environment varaible $DB that is a
# database conntection string, such as:
#
#     export DB="dbname=contact_test host=localhost user=contact_leader password=secret"
#
# Usage: in the base directory, run this:
#
#     test/test_migrations.sh
#
# If you use a database other than PostgreSQL, or a command other
# than  `psql`, then edit this file to work with your database.
#
# If you need a way to drop all tables:
#
#
#    DO $$ DECLARE
#        r RECORD;
#    BEGIN
#        -- if the schema you operate on is not "current", you will want to
#        -- replace current_schema() in query with 'schematodeletetablesfrom'
#        -- *and* update the generate 'DROP...' accordingly.
#        FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP
#            EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE';
#        END LOOP;
#    END $$;
##

test_up_migrations() {
    for migration in $(list_migrations | sort); do
        do_file "db/migrations/$migration/up.sql"
        do_file "db/examples/$migration/up.sql"
    done
}

test_down_migrations() {
    for migration in $(list_migrations | sort -r); do
        do_file "db/migrations/$migration/down.sql"
    done
}

list_migrations() {
    find db/migrations -depth 1 -type d -exec basename {} \; 
}

do_file() {
    echo "file:$1"
    cat "$1" | psql "$DB"
}

test_up_migrations
test_down_migrations