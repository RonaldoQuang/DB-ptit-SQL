select c.CustID, c.CustomerName
from Customer as c
join (select c.CustID, sum(p.Amount) as tong1
      from Customer as c
      join SaleOrder as s
      on c.CustId=s.CustID
      join Payment as p
      on s.OrderID=p.OrderID
      where p.Status='PAID' and year(s.OrderDate) in (2023)
      group by c.CustID) as b1
on c.CustID=b1.CustID
join (select c.CustID, sum(p.Amount) as tong2
      from Customer as c
      join SaleOrder as s
      on c.CustId=s.CustID
      join Payment as p
      on s.OrderID=p.OrderID
      where p.Status='PAID' and year(s.OrderDate) in (2024)
      group by c.CustID) as b2
on c.CustID=b2.CustID
where b1.tong1>=500 and b2.tong2>=500;
