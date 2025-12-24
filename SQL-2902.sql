select r.company_id, count(distinct g.name) as distinct_gene_count
from research as r
join gene as g
on r.id=g.research_id
where r.start_date>='2024-01-01'
group by r.company_id
order by distinct_gene_count desc, r.company_id
limit 1;










