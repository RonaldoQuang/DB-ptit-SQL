select c.CustID, c.CustomerName
from CUSTOMER as c
left join SALEORDER as s
on c.CustID=s.CustID
where s.OrderID is null
order by c.CustID;


