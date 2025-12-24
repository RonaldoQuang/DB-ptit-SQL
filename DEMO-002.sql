select s.OrderID, c.CustomerName
from CUSTOMER as c
join SALEORDER as s
on c.CustID=s.CustID
order by s.OrderID;


