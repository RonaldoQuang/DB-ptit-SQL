select b1.location, b1.tong as total_amount
from (select i.location, sum(i.amount) as tong
      from impact_investments as i
      join esg_factors as e
      on i.company_id=e.company_id
      where e.environment>2.0 and e.social>2.0 and e.governance>2.0
      group by i.location) as b1
where b1.tong>=10000000
order by b1.tong desc;








































