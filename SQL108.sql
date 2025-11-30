select t.username, c.dept, c.number
from Class as c
join Teaches as t
on c.dept=t.dept 
and c.number=t.number
where username='djw' or username='levy';