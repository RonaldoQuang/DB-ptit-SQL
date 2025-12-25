update Customer 
set Tier='TOP_CITY'
where CustID in (
  select b.CustID
  from (select c.City, c.CustID, sum(p.Amount) as t1
        from Customer as c
        join SaleOrder as s
        on c.CustID=s.CustID
        join Payment as p
        on s.OrderID=p.OrderID
        where p.Status='PAID'
        group by c.City, c.CustID) as b
  join (select b1.City, max(b1.tong) as t2
        from (select c.City, c.CustID, sum(p.Amount) as tong
              from Customer as c
              join SaleOrder as s
              on c.CustID=s.CustID
              join Payment as p
              on s.OrderID=p.OrderID
              where p.Status='PAID'
              group by c.City, c.CustID) as b1
        group by b1.City) as b2
  on b.City=b2.City and b.t1=b2.t2
);