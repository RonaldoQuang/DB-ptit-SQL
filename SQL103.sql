select i.username, c.dept, c.number
from Instructor as i
join Teaches as t
on i.username=t.username
join Class as c
on c.dept=t.dept
and c.number=t.number
order by lname desc
limit 2;