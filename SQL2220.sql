select h.name, h.num_beds, o.beds_occupied*100.0/h.num_beds as pct_occupied
from hospitals as h
join occupancy as o
on h.id=o.hospital_id
where h.state='New York'
order by pct_occupied desc;

