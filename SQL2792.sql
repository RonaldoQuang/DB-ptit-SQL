select sum(tickets_sold) as num_tickets_sold
from events
where category in ('music','theater');
