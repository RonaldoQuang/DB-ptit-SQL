select p1.name as provider_name, 
       count(p2.date) as days_active, 
       sum(p2.power_generated) as total_power_generated
from region as r1
join provider as p1
on r1.id=p1.region_id
join renewable_source as r2
on p1.id=r2.provider_id and r2.name='Solar'
join power_generation as p2
on r2.id=p2.source_id 
where r1.name like '%East%' and p2.date between '2021-02-01' and '2021-05-31'
group by p1.name
order by days_active desc, total_power_generated desc
limit 2;









