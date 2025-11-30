select kh.customer_id
from (select kh_sl.customer_id, count(distinct kh_sl.product_key) as soluongsp
      from (select * 
            from Customer 
            where product_key in (select product_key
                                  from Product)
            ) as kh_sl 
      group by kh_sl.customer_id ) as kh
where kh.soluongsp=(select count(*) from Product)