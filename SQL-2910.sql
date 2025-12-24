select e.name, e.category, e.tickets_sold
from events as e
join (select category, avg(tickets_sold) as avg
      from events
      where category in ('music', 'theater')
      group by category) as b1
on e.category=b1.category
where e.tickets_sold>avg
order by e.tickets_sold desc;










