select u.union_status, w.incident_year, sum(w.incidents) as total_incidents
from union_status as u
join workplace_safety_incidents as w
join construction_sectors as c
on u.id=w.union_status_id and c.sector_id=w.sector_id
where w.incident_year in (2021, 2022)
group by u.union_status, w.incident_year
order by u.union_status, w.incident_year;