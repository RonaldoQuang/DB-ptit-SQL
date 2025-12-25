select s.OrderID, c.CustomerName, b1.sl as TotalLines
from Customer as c
join SaleOrder as s
on c.CustID=s.CustID
join (select s.OrderID, count(*) as sl
      from Customer as c
      join SaleOrder as s
      on c.CustID=s.CustID
      join OrderItem as o
      on s.OrderID=o.OrderID
      group by s.OrderID) as b1
on s.OrderID=b1.OrderID
where b1.sl>=2
order by s.OrderID;
