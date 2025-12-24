select b1.category, b1.total_tickets
from (select category, sum(tickets_sold) as total_tickets
      from events
      where category in ('music', 'theater')
      group by category) as b1
where b1.total_tickets>300
order by total_tickets desc;