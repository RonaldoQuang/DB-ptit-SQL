select country, sum(budget) as total_budget
from (select country, budget
      from ai_budget_usa
      where year >= 2019
      union
      select country, budget
      from ai_budget_uk
      where year >= 2019
      union
      select country, budget
      from ai_budget_japan
      where year >= 2019) as b
group by country
order by total_budget desc;
