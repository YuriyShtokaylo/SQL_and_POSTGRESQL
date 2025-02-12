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
*/

--We have 2 groops of rules:
/*
DDL(DATA DEFINITION LANGUAGE):
- Query statements that define DB, tables & table structure
- Table constraints & relationships
- DB & table management(e.g. altering tables, droping tables)
*/
/*
DML(DATA MANIPULATION LANGUAGE) - Lets refer it as CRUD(Create Read Update Delete)
- Query statements that manipulate (insert, update & delete) or fetch data
- May join, filter or sort data
- Use DB & tables that where created via "Data Definition Statements"
*/