select c.title 
  from class as c 
  join teaches as t 
  on c.dept=t.dept and c.number=t.number;