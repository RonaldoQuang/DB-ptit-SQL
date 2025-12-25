update EMPLOYEE as e
set Salary=Salary*1.1
where EmpID in (
  select b1.EmpID
  from (select e.EmpID, sum(s.TotalAmount) as tong
        from EMPLOYEE as e
        join SALEORDER as s
        on e.EmpID=s.EmpID
        where s.Status='COMPLETED'
        group by e.EmpID) as b1
  where b1.tong>50000
);