SQL statements (or code) that are automatically run 
when a specific tabel is changed

```SQL
CREATE TRIGGER 
    trigger_name
    trigger_time
    trigger_event
ON table_name
FOR EACH ROW BEGIN
...
END;
```

trigger_time: BEFORE, AFTER
trigger_event: INSERT, UPDATE, DELETE

ex: run some code (middleware) before insering data on table.
ex: validation

NEW: refers to the new data we try to create it
OLD: refers to the old data we try to remove it


## MySQL Errors
- ERROR 1145 (42S02): ... doesn't exists
1145 => error code
45000 => error code is generic state representing unhandled user-defined exception
42S02 => sql state
text => error message

A numeric error code (1146). This number is MySQL-specific

A five-character SQLSTATE value ('42S02'). 
The values are taken from ANSI SQL and ODBC and are more standardized.

A message string - textual description of the error

## DELIMITER
is a sign of end of a statement
we can change it by: DELIMETER $$
why we use it?
for example in triggers we have multiple line statements