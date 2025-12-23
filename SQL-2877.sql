select b1.type, b1.total_distance_atlantic
from (select v1.type, sum(v2.distance) as total_distance_atlantic
      from vessels as v1
      join voyages as v2
      on v1.id=v2.vessel_id
      where v2.region='Atlantic'
      group by v1.type) as b1
where b1.total_distance_atlantic>=1000
order by b1.total_distance_atlantic desc;


























