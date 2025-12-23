select s.SID, s.SName
from Supplier as s
join (select s.SID, count(*) as sl
      from Supply as s
      join Product as p
      on s.PID=p.PID
      join Category as c
      on p.CatID=c.CatID
      where c.CatName='Electronics'
      group by s.SID) as b1
on s.SID=b1.SID
where b1.sl>=2;

