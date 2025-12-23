select b1.*, b2.incidents_2022, (b2.incidents_2022-b1.incidents_2021) as delta_2022_vs_2021
from (select u.union_status, sum(w.incidents) as incidents_2021
      from union_status as u
      join construction_sectors as c
      join workplace_safety_incidents as w  
      on u.id=w.union_status_id and c.sector_id=w.sector_id
      where w.incident_year=2021
      group by u.union_status) as b1
join (select u.union_status, sum(w.incidents) as incidents_2022
      from union_status as u
      join construction_sectors as c
      join workplace_safety_incidents as w  
      on u.id=w.union_status_id and c.sector_id=w.sector_id
      where w.incident_year=2022
      group by u.union_status) as b2
on b1.union_status=b2.union_status
order by b1.union_status;




