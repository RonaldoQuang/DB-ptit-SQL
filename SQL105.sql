select i.username, c.dept, c.number, c.title
from instructor as i
join teaches as t
  on i.username = t.username
join class as c
  on t.dept = c.dept
  and t.number = c.number
order by i.lname
limit 2;