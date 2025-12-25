update SALEORDER as s
set s.Status='PAID'
where OrderID in (
    select OrderID
    from PAYMENT
    where Status='PAID'
);
