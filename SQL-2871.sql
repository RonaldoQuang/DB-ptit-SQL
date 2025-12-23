select b1.sector_name, 100*b1.tong/(b1.tong+b2.tong) as union_share_pct
from (select c.sector_name, u.union_status, sum(w.incidents) as tong
      from union_status as u
      join construction_sectors as c
      join workplace_safety_incidents as w  
      on u.id=w.union_status_id and c.sector_id=w.sector_id
      where w.incident_year in (2021,2022)
      group by c.sector_name, u.union_status) as b1
join (select c.sector_name, u.union_status, sum(w.incidents) as tong
      from union_status as u
      join construction_sectors as c
      join workplace_safety_incidents as w  
      on u.id=w.union_status_id and c.sector_id=w.sector_id
      where w.incident_year in (2021,2022)
      group by c.sector_name, u.union_status) as b2
on b1.sector_name=b2.sector_name 
  and b1.union_status>b2.union_status
  and b1.tong>0 and b2.tong>0
order by union_share_pct desc;











