Batches
--------
batch_id (PK)
batch_name

    |
    | 1-to-many
    ↓

Students
--------
student_id (PK)
batch_id (FK)
email

    |
    | 1-to-many
    ↓

Submissions
-----------
submission_id (PK)
student_id (FK)
problem_id (FK)

Problems
--------
problem_id (PK)

    ↑
    |
many-to-many
    |
Contests
--------
contest_id (PK)

Through:
contest_problem_map
(contest_id, problem_id)