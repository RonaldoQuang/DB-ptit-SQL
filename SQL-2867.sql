select b.*
from (select h.name, p.date as peak_date, count(*) as peak_shots
      from hospitals as h
      join patient_vaccinations as p
  
      on h.id=p.hospital_id
      group by h.name, p.date) as b
join (select b1.name, max(b1.sl) as sl1
      from (select h.name, p.date, count(*) as sl
            from hospitals as h
            join patient_vaccinations as p
            on h.id=p.hospital_id
            group by h.name, p.date) as b1
      group by b1.name) as b2
on b.name=b2.name and b.peak_shots=b2.sl1
order by b2.sl1 desc
limit 3;








