select b1.material
from (select material, recycling_rate as rc2017
      from recycling_rates
      where year=2017) as b1
join (select material, recycling_rate as rc2018
      from recycling_rates
      where year=2018) as b2
on b1.material=b2.material
join (select material, recycling_rate as rc2019
      from recycling_rates
      where year=2019) as b3
on b1.material=b3.material
where rc2017<rc2018 and rc2018<rc2019
order by b1.material;




