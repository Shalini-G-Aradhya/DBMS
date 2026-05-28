CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    batch_id INT NOT NULL,
    FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE problems (
    problem_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    difficulty VARCHAR(20),
    CHECK (difficulty IN ('Easy','Medium','Hard'))
);

CREATE TABLE contests (
    contest_id INT PRIMARY KEY,
    contest_name VARCHAR(100) NOT NULL
);

CREATE TABLE contest_problem_map (
    contest_id INT,
    problem_id INT,
    PRIMARY KEY (contest_id, problem_id),
    FOREIGN KEY (contest_id) REFERENCES contests(contest_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    problem_id INT NOT NULL,
    verdict VARCHAR(50) NOT NULL,
    submitted_at TIMESTAMP,

    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    session_date DATE NOT NULL,
    status VARCHAR(20),

    FOREIGN KEY (student_id) REFERENCES students(student_id)
);