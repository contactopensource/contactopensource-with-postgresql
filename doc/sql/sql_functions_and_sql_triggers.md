# SQL functions and SQL triggers

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

CREATE TRIGGER trigger_nodes_updated_at
BEFORE UPDATE ON nodes
FOR EACH ROW
EXECUTE PROCEDURE function_new_updated_at();

CREATE TRIGGER trigger_edges_updated_at
BEFORE UPDATE ON nodes
FOR EACH ROW
EXECUTE PROCEDURE function_new_updated_at();

...etc...
```

If you use the above code, then you should use similar
code if you ever drop the table:

```sql
DROP FUNCTION function_new_updated_at;

DROP TRIGGER trigger_nodes_updated_at;
DROP TRIGGER trigger_edges_updated_at;
...etc...
```
