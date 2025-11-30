select b1.company_id, b3.total_amount_energy, b1.total_esg
from (select company_id, (environment+social+governance) as total_esg 
      from esg_factors) as b1
join (select b2.company_id, sum(b2.amount) as total_amount_energy
      from (select e.company_id, i.amount
            from impact_investments as i
            join esg_factors as e
            on i.company_id=e.company_id
            where i.sector like '%Energy%') as b2
      group by b2.company_id) as b3
on b1.company_id=b3.company_id
where b1.total_esg>7.5 and b3.total_amount_energy>10000000
order by b3.total_amount_energy;