select v1.Name as type_name, max(v2.Horsepower) as max_hp
from Vehicle_Types as v1
join Vehicle_Releases as v2
on v1.id=v2.Vehicle_Type_Id
where v2.Release_Date between '2021-01-01' and '2022-12-31'
group by v1.Name
order by max_hp desc;












