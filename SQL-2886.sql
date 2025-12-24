select material, avg(recycling_rate) as avg_rate
from recycling_rates
where year in (2018,2019)
group by material
order by avg_rate desc
limit 1;