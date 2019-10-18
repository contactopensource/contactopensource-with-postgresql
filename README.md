# Contact Open Source as PostgreSQL

Contact Open Source is free contact management software, akin to a contacts app, or address book, or customer relationship manganer (CRM).


## Introduction

The goal of this project is to provide free, open, modern software that is especially easy to change and adapt by software programmers, application developers, and database administrators.


## Ideas

Ideas for contact card formats:

  * [VCard using structured text](https://wikipedia.org/wiki/VCard)

  * [HCard using HTML](https://wikipedia.org/wiki/HCard) (and XCard using XML and similar format)

  * [JCard using JSON and RFC 7095](https://tools.ietf.org/html/rfc7095) (and YCard using YAML and simlar format)

Ideas for node associations:

  * Feed: such as a feed of news, weather, stories, posts, etc.

  * Note: such as a memo, advisory, update, additional information, etc.

  * Résumé: such as summary of work experience, skills, capabilties, etc.


## Implementation

This implementation uses the PostgreSQL database and SQL.

We welcome contributing code that provides additional implementations, such as for more databases (e.g. MySQL, SQL Server, Oracle).

The current code is deliberately very simple: there is only one table: a contact node.

We encourage you to extend this code as you like, for your own kinds of SQL and functionality.


### SQL function and SQL trigger

Optional: you can use the database to automatically use
a SQL function and SQL trigger to update the tracking
field `updated_at_timestamp_utc`.

We prefer to use the app to set the field, because we
have some use cases (such as importing data) where the
imported data already uses a field `updated_at` and we
want to preserve that value, rather than having the value
overwritten by a trigger when the database imports the field.

If you prefer to use the database to update the field value,
then you can uncomment the code below, and adjust as you like.

```sql
CREATE OR REPLACE FUNCTION function_new_updated_at()
RETURNS TRIGGER AS $$
BEGIN
NEW.updated_at_timestamp_utc = NOW();
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_contacts_updated_at
BEFORE UPDATE ON contacts
FOR EACH ROW
EXECUTE PROCEDURE function_new_updated_at();
```

If you use the above code, then you should use similar
code if you ever drop the table:

```sql
DROP FUNCTION function_new_updated_at;

DROP TRIGGER trigger_items_updated_at;
```
