select c.sector_name, u.union_status, sum(w.incidents) as total_incidents
from union_status as u
join construction_sectors as c
join workplace_safety_incidents as w
on u.id=w.union_status_id and c.sector_id=w.sector_id
where w.incident_year in (2021,2022)
group by c.sector_name, u.union_status
order by c.sector_name, u.union_status;

