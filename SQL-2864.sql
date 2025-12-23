select h.name, count(distinct p.patient_id) as unique_patients, count(p.date) as total_shots
from hospitals as h
left join patient_vaccinations as p
on h.id=p.hospital_id and p.date between '2022-03-01' and '2022-03-31'
where h.location='Nairobi'
group by h.name
order by unique_patients desc, total_shots desc;









    


