select r.title, count(*) as gene_count
from research as r
join gene as g
on r.id=g.research_id
group by r.title
order by gene_count desc
limit 3;







