alter table Employees
modify column emp_id int not null auto_increment primary key,
modify column salary decimal(12,2) not null default 0,
modify column status enum('ACTIVE','INACTIVE','RESIGNED') not null default 'ACTIVE',
add column employment_type enum('FULL_TIME','PART_TIME','INTERN') not null default 'FULL_TIME',
add column hire_date date,
drop column temp_info;
