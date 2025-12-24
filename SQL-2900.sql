select name, category, tickets_sold
from events
where category in ('music', 'theater')
order by tickets_sold desc
limit 3;



