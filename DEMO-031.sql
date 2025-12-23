insert into VipCustomer(CustID, CustomerName, City, TotalSpent2024)
select c.CustID, c.CustomerName, c.City, b1.tong
from Customer as c
join (select CustID, sum(TotalAmount) as tong
      from SaleOrder
      where year(OrderDate)=2024
      group by CustID) as b1
on c.CustID=b1.CustID
where b1.tong>=2000


