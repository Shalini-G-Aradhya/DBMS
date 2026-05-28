# Normalization Notes

## Repeated Data Examples

1. Batch names repeated for multiple students.
2. Problem details repeated in submissions.
3. Contest details repeated across mappings.

---

## Improvements Through Normalization

1. Separate batches into its own table.
2. Separate contest-problem mapping table.

---

## Functional Dependencies

1. student_id → student_name, email
2. problem_id → title, difficulty

---

## Partial Dependency

In contest_problem_map:

* contest_id and problem_id together identify a record.

---

## Normal Forms

### 1NF

All columns contain atomic values.

### 2NF

Partial dependencies removed using mapping tables.

### 3NF

Non-key attributes depend only on primary keys.

---

## Trade-offs

Some redundancy may still exist for faster querying and easier imports from raw CSV files.
