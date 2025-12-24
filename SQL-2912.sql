select year, sum(budget) as total_budget
from (select year, budget
      from ai_budget_usa
      where year>=2018 and year<=2021
      union
      select year, budget
      from ai_budget_uk
      where year>=2018 and year<=2021
      union
      select year, budget
      from ai_budget_japan
      where year>=2018 and year<=2021) as b
group by year
order by total_budget desc
limit 1;
