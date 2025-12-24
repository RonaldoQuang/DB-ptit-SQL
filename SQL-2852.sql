select b1.name as provider_name, (b1.t1+b2.t2) as total_power_generated
from (select p1.name, sum(p2.power_generated) as t1
      from region as r1
      join provider as p1
      on r1.id=p1.region_id
      join renewable_source as r2
      on p1.id=r2.provider_id and r2.name='Solar'
      join power_generation as p2
      on r2.id=p2.source_id 
      where r1.name like '%st' 
        and p2.date between '2021-01-01' and '2021-03-31'
        and p2.power_generated<>0
      group by p1.name) as b1
join (select p1.name, sum(p2.power_generated) as t2
      from region as r1
      join provider as p1
      on r1.id=p1.region_id
      join renewable_source as r2
      on p1.id=r2.provider_id and r2.name='Wind'
      join power_generation as p2
      on r2.id=p2.source_id 
      where r1.name like '%st' 
        and p2.date between '2021-01-01' and '2021-03-31'
        and p2.power_generated<>0
      group by p1.name) as b2
on b1.name=b2.name
order by total_power_generated desc
limit 3;









