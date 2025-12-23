select b1.name, b1.sl as distinct_regions, b1.kl as total_cargo
from (select v1.name, count(distinct v2.region) as sl, sum(v2.cargo_weight) as kl
      from vessels as v1
      join voyages as v2
      on v1.id=v2.vessel_id
      group by v1.name) as b1
where b1.sl>=2 and b1.kl>0
order by b1.sl desc, b1.kl desc, b1.name;






























