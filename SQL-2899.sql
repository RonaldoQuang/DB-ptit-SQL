select b1.category, b1.sl as event_count
from (select category, count(*) as sl
      from events
      where tickets_sold between 100 and 250
      group by category) as b1
order by b1.sl desc, category;

