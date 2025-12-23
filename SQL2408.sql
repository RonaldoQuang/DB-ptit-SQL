select max(v2.Horsepower) AS horsepower
from Vehicle_Types as v1
join Vehicle_Releases as v2
on v1.Id=v2.Vehicle_Type_Id
where v1.Name='Sedan' and v2.Release_Date>='2020-01-01'

