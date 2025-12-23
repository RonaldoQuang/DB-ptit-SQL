select h.name, h.capacity, b1.total_shots_mar2022, 
       round(100*b1.total_shots_mar2022/h.capacity,2) as utilization_pct
from hospitals as h
join (select h.name, count(p.date) as total_shots_mar2022
 from hospitals as h
 join patient_vaccinations as p
 on h.id=p.hospital_id and p.date between '2022-03-01' and '2022-03-31'
 group by h.name
 having total_shots_mar2022>=1) as b1
on h.name=b1.name
order by utilization_pct desc;