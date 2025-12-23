select c.CustID, c.CustomerName, b1.tong as TotalSpent
from Customer as c
join (select c.CustID, sum(s.TotalAmount) as tong
      from Customer as c
      join SaleOrder as s
      on c.CustID=s.CustID
      group by c.CustID) as b1
on c.CustID=b1.CustID
join (select c.CustID, count(*) as sl
      from Customer as c
      join SaleOrder as s
      on c.CustID=s.CustID
      where year(s.OrderDate)=2024 and s.TotalAmount>=500
      group by c.CustID) as b2
on c.CustID=b2.CustID
where b1.tong>=1000 and b2.sl>=1;
