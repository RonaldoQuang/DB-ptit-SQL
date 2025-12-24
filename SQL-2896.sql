select v1.Name as type_name, avg(v2.Horsepower) as avg_hp
from Vehicle_Types as v1
join Vehicle_Releases as v2
on v1.Id=v2.Vehicle_Type_Id
where v1.Name in ('SUV', 'Truck') 
  and v2.Origin_Country in ('USA','Germany')
  and v2.Release_Date>='2020-01-01'
group by v1.Name
order by avg_hp desc;















