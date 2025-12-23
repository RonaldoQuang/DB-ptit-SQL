select s1.*
from student_info as s1
join (select student_id, count(accommodation_type) as sl
      from student_disability_accommodations 
      group by student_id) as b1
on s1.student_id=b1.student_id
where b1.sl>1;
