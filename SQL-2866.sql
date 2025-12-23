select h.name, h.capacity
from hospitals as h
join (select h.name, count(p.date) as total_shots_mar2022
      from hospitals as h
      left join patient_vaccinations as p
      on h.id=p.hospital_id and p.date between '2022-03-01' and '2022-03-31'
      group by h.name) as b1
on h.name=b1.name
where total_shots_mar2022=0
order by h.name;

