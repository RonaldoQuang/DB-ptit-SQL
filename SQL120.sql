create procedure GetEmployeeById(in employeeId int)
  begin
    select * from Employees where id=employeeId;
  end