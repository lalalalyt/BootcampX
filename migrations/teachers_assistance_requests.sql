CREATE TABLE teachers (
  id serial primary key NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE,
  is_active boolean DEFAULT TRUE
);

CREATE TABLE assistance_requests(
  id serial primary key NOT NULL,
  assignment_id INTEGER references assignments(id) ON DELETE CASCADE,
  student_id INTEGER references students(id) ON DELETE CASCADE,
  teacher_id INTEGER references teachers(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);