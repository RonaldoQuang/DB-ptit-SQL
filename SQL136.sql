select b1.student_id, b1.student_name, b1.subject_name,
	case
		when b2.sl is null then 0
        else b2.sl
	end as attended_exams
from (select *
      from Students as s
      join Subjects as su) as b1
left join (select student_id, subject_name, count(*) as sl
           from Examinations
           group by student_id, subject_name) as b2
on b1.student_id=b2.student_id and b1.subject_name=b2.subject_name
order by b1.student_id, b1.subject_name;
