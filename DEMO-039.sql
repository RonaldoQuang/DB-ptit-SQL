create table EMPLOYEE(
  EmpID int primary key,
  FullName varchar(100) not null,
  BirthDate date,
  HireDate date not null,
  Salary decimal(10,2) not null,
  Department varchar(50) not null,
  Email varchar(100),
  Phone varchar(20)
);