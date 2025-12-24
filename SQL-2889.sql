select p.product_name, sum(s.quantity) as total_qty
from products as p
join sales as s
on p.product_id=s.product_id
join time as t
on t.time_id=s.time_id
where p.category='Hair Care' and p.vegan is true and year(t.sale_date)=2025
group by p.product_name
order by total_qty desc;




