select distinct v.name
from vessels as v
join voyages as vg 
on v.id=vg.vessel_id
where vg.region='Arctic' and vg.cargo_weight > 5000;
