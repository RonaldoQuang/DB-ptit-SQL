select (b1.recycling_rate-b2.recycling_rate)/b2.recycling_rate as yoy_growth
from (select recycling_rate
      from recycling_rates
      where material='glass' and year=2018) as b1,
     (select recycling_rate
      from recycling_rates
      where material='glass' and year=2017) as b2




      








































