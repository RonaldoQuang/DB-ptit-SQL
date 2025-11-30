create table Enrollments(
  enrollment_id int primary key,
  student_id int,
  course_id int,
  enrollment_date date,
  foreign key (student_id) references Students (student_id),
  foreign key (course_id) references Courses (course_id)
);