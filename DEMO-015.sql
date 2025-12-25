alter table Students
modify column student_id int not null auto_increment primary key,
modify column birth_date date,
modify column email varchar(255) not null,
modify column phone varchar(50) not null,
add column created_at datetime default current_timestamp;

