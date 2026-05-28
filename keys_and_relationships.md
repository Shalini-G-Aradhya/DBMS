# Keys and Relationships

## Students

Primary Key:

* student_id

Candidate Keys:

* student_id
* email

Alternate Key:

* email

Foreign Keys:

* batch_id references batches(batch_id)

Constraints:

* email UNIQUE
* student_name NOT NULL

---

## Batches

Primary Key:

* batch_id

Constraints:

* batch_name UNIQUE

---

## Courses

Primary Key:

* course_id

---

## Problems

Primary Key:

* problem_id

Constraints:

* difficulty CHECK ('Easy','Medium','Hard')

---

## Contests

Primary Key:

* contest_id

---

## Submissions

Primary Key:

* submission_id

Foreign Keys:

* student_id references students(student_id)
* problem_id references problems(problem_id)

Constraints:

* verdict NOT NULL

---

## Contest_Problems

Composite Primary Key:

* (contest_id, problem_id)

Foreign Keys:

* contest_id references contests
* problem_id references problems

This table resolves many-to-many relationship between contests and problems.
