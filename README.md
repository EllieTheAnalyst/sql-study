# SQL Study

This repository documents my hands-on SQL learning journey using PostgreSQL running inside Docker.  
The goal is to build a strong foundation in relational databases, querying logic, and data diagnostics through structured exercises.

---

## 🛠 Tech Stack

- PostgreSQL (running in Docker)
- DBeaver (database client)
- Git & GitHub (version control + documentation)

---

## 📂 Repository Structure

sql-study/
│
├── docker/
│ └── docker-setup.md
│
├── exercises/
│ ├── 01_basic_select/
│ │ ├── schema.sql
│ │ ├── inserts.sql
│ │ ├── queries.sql
│ │ └── notes.md
│ │
│ └── 02_joins/
│ ├── schema.sql
│ ├── inserts.sql
│ ├── queries.sql
│ └── notes.md
│
├── screenshots/
└── README.md


Each exercise is structured to separate:

- Schema definition
- Data insertion
- Query logic
- Conceptual notes and reflections

This ensures clarity, reproducibility, and clean version control.

---

## 📚 Topics Covered

### Basic Querying
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`

### NULL Handling
Understanding how SQL treats `NULL` as unknown rather than empty.

Example:

```sql
SELECT *
FROM students
WHERE age IS NULL;


