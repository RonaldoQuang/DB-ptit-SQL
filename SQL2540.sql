select h.name, h.capacity, b1.sl as vaccinated
from hospitals as h
join (select h.id, count(patient_id) as sl
      from hospitals as h
      join patient_vaccinations as p
      on h.id=p.hospital_id
      where h.location='Nairobi'
      group by h.id) as b1
on h.id=b1.id;