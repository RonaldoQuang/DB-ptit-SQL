select s.OrderID, c.CustomerName, s.OrderDate, s.TotalAmount
from Customer as c
join SaleOrder as s
on c.CustID=s.CustID
where c.City='Ha Noi' and s.TotalAmount>500
order by s.OrderID;
