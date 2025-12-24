select p.product_name, sum(s.quantity) as total_qty
from products as p
join sales as s
on p.product_id=s.product_id
join time as t
on t.time_id=s.time_id
where t.sale_date>=(select date_sub(max(sale_date), interval 3 month)
                    from time)
group by p.product_name
order by total_qty desc
limit 3;