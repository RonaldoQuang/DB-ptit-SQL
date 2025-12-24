select b1.country, round(100*b1.sl1/b2.sl2,2) as recycle_rate
from (select p.country, count(distinct p.product_id) as sl1
      from SupplyChainViolations as s
      join Products as p
      on s.country=p.country
      join ProductTransparency as p1
      on p.product_id=p1.product_id
      where p1.recycled_materials = true
      group by p.country) as b1
right join (select p.country, count(*) as sl2
      from SupplyChainViolations as s
      join Products as p
      on s.country=p.country
      join ProductTransparency as p1
      on p.product_id=p1.product_id
      group by p.country) as b2
on b1.country=b2.country
where b2.sl2>=2
order by recycle_rate desc, country;

