select e.name
from (select managerId, count(id) as sl
      from Employee
      group by managerId) as b1
join Employee as e
on b1.managerId=e.id
where b1.sl>=5;