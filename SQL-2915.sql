select p.country, count(distinct p.product_id) as recycled_products_count
from SupplyChainViolations as s
join Products as p
on s.country = p.country
join ProductTransparency as p1
on p.product_id = p1.product_id
where s.num_violations>=1
and p1.recycled_materials is true
group by p.country
order by recycled_products_count desc, p.country;
