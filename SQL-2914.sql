select i1.community_type, count(distinct i2.student_id) as students_impacted
from initiatives as i1
join impact as i2
on i1.initiative_id=i2.initiative_id
where i1.initiative_date between '2025-01-01' and '2025-03-31'
group by i1.community_type
order by students_impacted desc;