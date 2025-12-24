select b1.n1 as type_name, b1.n2 as model_name, b2.t as release_date
from (select v1.Name as n1, v2.Name as n2, v2.Release_Date
      from Vehicle_Types as v1
      join Vehicle_Releases as v2
      on v1.Id=v2.Vehicle_Type_Id) as b1
join (select v1.Name, max(v2.Release_Date) as t
      from Vehicle_Types as v1
      join Vehicle_Releases as v2
      on v1.Id=v2.Vehicle_Type_Id
      group by v1.Name) as b2
on b1.n1=b2.Name and b1.Release_Date=b2.t
order by b1.n1, b1.n2;














