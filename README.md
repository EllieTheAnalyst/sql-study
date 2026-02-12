SQL Study Log

This repository documents my hands-on SQL learning journey using PostgreSQL running in Docker.

Tech Stack

PostgreSQL (Docker container)

DBeaver (database client)

GitHub for documentation

Topics Covered

SELECT statements

NULL handling (IS NULL)

Aggregations (COUNT, GROUP BY)

Data completeness diagnostics

JOIN operations

Example Concept: NULL Handling

Example query:

SELECT 
    COUNT(*) AS total,
    COUNT(age) AS non_null_ages,
    COUNT(*) - COUNT(age) AS null_ages
FROM students;


Key insight:
COUNT(column) ignores NULL values.
