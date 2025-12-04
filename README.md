## Job Application Management System (DBMS Project)

### Project Overview

This project is a Database Management System (DBMS) designed to manage
job postings, companies, candidates, and applications. It includes the
full database schema, table creation, relationships, and sample data
insertion.

The project demonstrates: - Database design - Primary & foreign key
relationships - Normalized table structure - SQL schema + queries -
Realistic job application workflow

### Project Structure

Job_Application_Management_System/
│
├── README.txt        # project explanation
├── schema.sql        # database + tables + insert data
└── queries.sql       # test queries


### How to Run the Project

1.  Import the Database Use PowerShell: “C:FilesServer 8.0.exe” -u root
    -p < schema.sql

    Or inside MySQL shell: SOURCE schema.sql;

2.  Select the Database USE JobApplicationDB;

3.  Run Queries SOURCE queries.sql;

### Sample Queries Included

-   Get all job postings
-   View all candidates
-   Applications with candidate details (JOIN)
-   Jobs posted by each company
-   Candidates with more than 2 years experience
-   Count applications per job

### Technologies Used

-   MySQL
-   SQL
-   VS Code
-   DBMS Concepts

**Author**

Tanvi Gaonkhadkar
