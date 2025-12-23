select i.project, i.location, i.amount, e.environment, e.social, e.governance
from esg_factors as e
join impact_investments as i
on e.company_id=i.company_id
where i.sector='Renewable Energy'
and e.environment+e.social+e.governance>7.5;


