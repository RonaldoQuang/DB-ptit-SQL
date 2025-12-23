select s.country
from SupplyChainViolations as s
join Products as p1
on s.country=p1.country
join ProductTransparency as p2
on p1.product_id=p2.product_id
where p2.recycled_materials is true and s.num_violations>=1;