update Payment 
set Status='PAID', PaidAt='2025-01-01'
where OrderID in (
  select b1.OrderID
  from (select p2.OrderID, sum(p1.Price*o.Qty) as tong
        from Product as p1
        join OrderItem as o
        on p1.PID=o.PID
        join Payment as p2
        on o.OrderID=p2.OrderID
        group by p2.OrderID) as b1
  where b1.tong>=500
);