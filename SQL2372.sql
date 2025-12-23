select avg(b1.budget) as num_budget
from (select * from ai_budget_usa 
      union all 
      select * from ai_budget_uk 
      union all 
      select * from ai_budget_japan) as b1
where year between 2018 and 2020;
