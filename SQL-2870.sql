select c.sector_name, u.union_status, avg(w.incidents) as avg_incidents_2021_2022
from union_status as u
join construction_sectors as c
join workplace_safety_incidents as w  
on u.id=w.union_status_id and c.sector_id=w.sector_id
where w.incident_year in (2021,2022)
group by c.sector_name, u.union_status
order by avg_incidents_2021_2022 desc;







