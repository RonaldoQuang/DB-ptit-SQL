delete c
from CustomerArchive as c
left join (select CustID, sum(TotalAmount) as tong
           from SaleOrder as s
           where OrderDate<'2024-01-01'
           group by CustID) as b1
on c.CustID=b1.CustID
left join (select CustID, count(OrderID) as sl
           from SaleOrder as s
           where OrderDate>='2024-01-01'
           group by CustID) as b2
on c.CustID=b2.CustID
where (b1.tong<500 or b1.tong is null) and b2.sl is null;