select (b1.recycling_rate-b2.recycling_rate) as rate_difference
from (select recycling_rate
      from recycling_rates
      where material='paper' and year=2019) as b1,
     (select recycling_rate
      from recycling_rates
      where material='paper' and year=2017) as b2



      








































