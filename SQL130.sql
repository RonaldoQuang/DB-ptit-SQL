select p.product_name, s.year, s.price
from Sales as s
join Product as p
on s.product_id = p.product_id;
