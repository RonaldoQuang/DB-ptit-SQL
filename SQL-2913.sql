select b1.initiative_name, b1.sl as students_impacted
from (select i1.initiative_name, count(distinct i2.student_id) as sl
      from initiatives as i1
      join impact as i2
      on i1.initiative_id=i2.initiative_id
      where year(i1.initiative_date)=2024
      group by i1.initiative_name) as b1
where b1.sl>=2
order by b1.sl desc;