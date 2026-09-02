# RaceDay Nova – Part 1

**Module:** PROG6212 Programming 2B  
**Submission:** Part 1 – System Planning and Database

RaceDay Nova is a proposed full-stack event-management platform for the South African running, walking and cycling community. The system separates Organiser and Participant permissions and provides the database/API foundation required for Parts 2 and 3.

## User roles

### Organiser
- Create, edit and delete/cancel events.
- Manage event categories.
- View event enrolments.
- Capture and update participant results.

### Participant
- Register and log in.
- Browse events and categories.
- Enrol in an event category.
- View own enrolments.
- View personal performance history.

## Part 1 evidence

| File | Purpose |
|---|---|
| `docs/RaceDay_Nova_ERD.png` | Seven-entity ERD with PKs, FKs and cardinalities |
| `docs/RaceDay_Nova_API_Endpoint_Plan.md` | Structured endpoint plan |
| `docs/RaceDay_Nova_Database.sql` | SQL Server schema and realistic seed data |
| `docs/Part1_Video_Script.md` | Script for student's own-voice video |
| `docs/20_Meaningful_Commits_Plan.md` | Suggested meaningful commit sequence |
| `docs/Part1_Rubric_Traceability.md` | Rubric-to-evidence mapping |
| `.github/workflows/part1-validation.yml` | CI validation workflow |

## ERD design

The model contains seven entities: Users, Events, Categories, EventCategories, Enrolments, Results and EventWeatherSnapshots.

- One organiser can manage many events.
- Events and Categories are many-to-many through EventCategories.
- One participant can have many enrolments.
- One event category can receive many enrolments.
- An enrolment can have zero or one result.
- An event can have many weather snapshots.

## SQL Server / SSMS

1. Open `docs/RaceDay_Nova_Database.sql` in SQL Server Management Studio.
2. Execute the script on a SQL Server instance.
3. Confirm `RaceDayNovaDB` is created.
4. Confirm all seven tables exist.
5. Run the verification queries at the end of the script.
6. Capture your own SSMS evidence for the presentation.

The script contains primary keys, foreign keys, `NOT NULL`, `UNIQUE`, `DEFAULT` and `CHECK` constraints. Seed data includes two organisers, two participants, three events, categories for each event, sample enrolments, results and weather records.

## GitHub and CI/CD

The workflow validates that the required Part 1 evidence exists and performs basic content checks on the SQL and API plan. Push the repository to your own GitHub account and show the resulting green workflow run in your README/evidence.

**Important:** The assignment requires a minimum of 20 meaningful commits. The commit plan is provided as guidance; the actual commits must be made by the student and must reflect genuine work.

## Video

Every part requires an unlisted YouTube video with the student's own voice. Do not use an AI-generated voice.

**Part 1 video:** `REPLACE_WITH_YOUR_UNLISTED_YOUTUBE_LINK`

## Final submission checklist

- [ ] Repository pushed to your own GitHub account.
- [ ] `/docs` contains the ERD PNG.
- [ ] `/docs` contains the endpoint plan.
- [ ] `/docs` contains the SQL script.
- [ ] SQL script tested successfully in SSMS.
- [ ] Minimum 20 meaningful commits made using your own account.
- [ ] GitHub Actions workflow is green.
- [ ] Screenshot of the real green build added to evidence/README.
- [ ] Own-voice Part 1 video recorded.
- [ ] Video uploaded as unlisted to YouTube.
- [ ] Real YouTube link added to README.
- [ ] GitHub repository link submitted on ARC.


## Word Planning Document

Detailed Part 1 planning document: `docs/RaceDay_Nova_Part1_Planning.docx`.
