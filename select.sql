SELECT 'email' FROM 'customers';
SELECT 'first_name' FROM 'customers';
SELECT "select" FROM "customers";
--THIS IS COMMENT(INLINE)
/*THIS IS BLOCK COMMENT

LETS SUMMORIZE:
- SQL statements must end with senicolons - if you have more than one SQL statement in command
- A single SQL statement in a command doesn't need a semicolon at the end
- SQL statements are case-insensitive - SELECT = select = SeLeCt
- Identifiers (e.g. table names, column names) can be surrounded with quotes to avoid clashes with build-in keywords
- Statement can consist of one or more clauses - but the order of clauses must be correct(e.g. SELECT before FROM and WHERE)