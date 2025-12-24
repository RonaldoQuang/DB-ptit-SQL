select c.CustomerName, coalesce(tong,0) as PaidTotal
from CUSTOMER as c
left join ( select c.CustID, sum(s.Total) as tong
            from CUSTOMER as c
            join SALEORDER as s
            on c.CustID=s.CustID
            join PAYMENT as p
            on s.OrderID=p.OrderID
            where p.Status='PAID'
            group by c.CustID ) as b1
on c.CustID=b1.CustID
order by c.CustomerName;

