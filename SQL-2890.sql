select b1.category, b1.sl as distinct_products
from (select p.category, count(distinct p.product_id) as sl
      from products as p
      join sales as s
      on p.product_id=s.product_id
      join time as t
      on t.time_id=s.time_id
      where t.sale_date between '2025-07-01' and '2025-09-30'
      group by p.category) as b1
where b1.sl>=2
order by b1.sl desc;







