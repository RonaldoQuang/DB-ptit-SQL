select b1.recycling_rate-b2.recycling_rate as rate_difference
from (select recycling_rate 
      from recycling_rates 
      where year='2019' and material='glass') as b1
join (select recycling_rate 
      from recycling_rates 
      where year='2018' and material='glass') as b2


