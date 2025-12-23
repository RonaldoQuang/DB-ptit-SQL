select c.CustID, c.CustomerName, b1.tong as TotalSpent
from Customer as c
join (select s.CustID, count(*) as sl1, sum(TotalAmount) as tong
      from SaleOrder as s
      where year(OrderDate)=2024 and Status='PAID'
      group by s.CustID) as b1
on c.CustID=b1.CustID
join (select s.CustID, count(*) as sl2
      from SaleOrder as s
      where year(OrderDate)=2024
      group by s.CustID) as b2
on c.CustID=b2.CustID
where b1.tong>=1000 and b1.sl1=b2.sl2;

