select s.OrderID, c.CustomerName, s.OrderDate, s.TotalAmount
from Customer as c
join SaleOrder as s
on c.CustID=s.CustID
order by s.OrderID;
