select v1.name as vessel_name, v2.id as voyage_id, v2.cargo_weight, v1.max_cargo_weight
from vessels as v1
join voyages as v2
on v1.id=v2.vessel_id
where v2.cargo_weight>v1.max_cargo_weight
order by v2.id;



























