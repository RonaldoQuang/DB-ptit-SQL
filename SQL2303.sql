select i.initiative_name, b1.students_impacted
from initiatives as i
join (select i1.initiative_id, count(i2.student_id) as students_impacted
      from initiatives as i1
      join impact as i2
      on i1.initiative_id=i2.initiative_id
      where i1.community_type='Historically_Underrepresented'
      group by i1.initiative_id
      order by students_impacted desc
      limit 5) as b1
on i.initiative_id=b1.initiative_id;
