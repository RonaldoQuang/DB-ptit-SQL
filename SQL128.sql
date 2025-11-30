select class
from ( select class, count(student) as soluong
       from courses
       group by class) as t
where t.soluong>=5;