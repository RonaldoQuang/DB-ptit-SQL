select b1.name, b1.tong as tickets_sold
from (select name, sum(tickets_sold) as tong
      from events
      where category='music'
      group by name) as b1
where b1.tong>(select avg(tickets_sold)
                        from events
                        where category='music')
order by tickets_sold desc;