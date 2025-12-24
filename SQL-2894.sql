select v2.Origin_Country as origin_country, count(*) as model_count
from Vehicle_Types as v1
join Vehicle_Releases as v2
on v1.id=v2.Vehicle_Type_Id
where v2.Release_Date>'2018-12-31' and v2.Horsepower between 150 and 350
group by v2.Origin_Country
order by model_count desc;












