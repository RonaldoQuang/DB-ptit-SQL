select b1.name, b1.total_cargo_arctic
from (select v1.name, sum(v2.cargo_weight) as total_cargo_arctic
      from vessels as v1
      join voyages as v2
      on v1.id=v2.vessel_id
      where v2.region='Arctic'
      group by v1.name) as b1
where b1.total_cargo_arctic>10000
order by b1.total_cargo_arctic desc;


























