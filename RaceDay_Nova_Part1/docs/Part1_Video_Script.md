 # RaceDay Nova – Part 1 Video Presentation Script

## 1. Introduction
Hello, my name is Shantell Mlatjie. This video demonstrates my RaceDay Nova Part 1 planning submission for PROG6212 Programming 2B. Part 1 focuses on the system design, REST API planning, SQL Server database and GitHub workflow.

## 2. Explain the roles
The system has two roles. Organisers can create, edit and delete events, manage categories, view enrolments and capture results. Participants can register, log in, browse events, select categories, view their own enrolments and track their results.

## 3. Explain the ERD
Here I am showing my seven-entity ERD. Users are connected to Events because an organiser can manage many events. Events and Categories have a many-to-many relationship, resolved by EventCategories. Participants are linked to EventCategories through Enrolments. Each enrolment can have zero or one result. Events can also have multiple stored weather snapshots.

## 4. Explain the API plan
My endpoint plan uses the /api prefix and covers authentication, profiles, events, categories, event categories, enrolments, results, route information, weather and health. Role requirements are included for protected endpoints.

## 5. Run SQL in SSMS
Now I am opening RaceDay_Nova_Database.sql in SQL Server Management Studio. The script creates RaceDayNovaDB, creates all seven tables, defines primary keys, foreign keys, unique constraints, default values and check constraints, and then inserts realistic sample data.

Run the complete script and show successful output. Then show the verification queries and returned records.

## 6. GitHub and CI/CD
Finally, I will show the repository structure, the docs folder and the GitHub Actions workflow. The workflow validates the required Part 1 files. I will also show my own meaningful commit history and the successful green workflow run.

## 7. Closing
“This concludes my RaceDay Nova Part 1 demonstration. The database and API plan provide the foundation for Part 2, where the RESTful API will be implemented in C#.”
