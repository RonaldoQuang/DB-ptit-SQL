select b1.lead_researcher
from (select r.lead_researcher, count(g.name) as sl 
      from research as r
      join gene as g
      on r.id=g.research_id
      group by r.lead_researcher) as b1
where b1.sl=(select max(b1.sl)
             from (select r.lead_researcher, count(g.name) as sl 
                   from research as r
                   join gene as g
                   on r.id=g.research_id
                   group by r.lead_researcher) as b1)
