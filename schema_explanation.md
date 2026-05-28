# Schema Understanding

## students.csv

Stores student details registered in the CodeJudge platform.

Important Columns:

* student_id → unique identifier for students
* student_name → name of student
* email → student email
* batch_id → batch assigned to student

Relationships:

* batch_id connects students with batches table.

Issues:

* batch details may repeat for multiple students.

---

## batches.csv

Stores information about batches.

Important Columns:

* batch_id → unique batch identifier
* batch_name → name of batch

---

## courses.csv

Stores course information.

Important Columns:

* course_id → unique course identifier
* course_name → course title

---

## problems.csv

Stores coding problems.

Important Columns:

* problem_id → unique problem identifier
* title → problem title
* difficulty → easy/medium/hard

---

## contests.csv

Stores contest information.

Important Columns:

* contest_id → unique contest identifier
* contest_name → contest title

---

## submissions.csv

Stores student code submissions.

Important Columns:

* submission_id → unique submission identifier
* student_id → identifies student
* problem_id → identifies problem
* verdict → accepted/rejected

Relationships:

* student_id references students
* problem_id references problems

Issues:

* student details may repeat indirectly across submissions.

---

## attendance.csv

Stores attendance records.

Important Columns:

* attendance_id → unique attendance record
* student_id → identifies student
* session_date → attendance date

Relationships:

* student_id references students
