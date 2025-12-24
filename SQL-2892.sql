select p.vegan, sum(s.quantity) as total_qty
from products as p
join sales as s
on p.product_id=s.product_id
join time as t
on t.time_id=s.time_id
where p.category in ('Hair Care', 'Body Care') 
  and t.sale_date between '2025-01-01' and '2025-06-30'
group by p.vegan
order by total_qty desc;










