select e.unique_id, emp.name
from Employees emp
left join EmployeeUNI e
on emp.id = e.id;
