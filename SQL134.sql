select b1.name as results
from (select u.name, count(m.movie_id) as sl
      from Users as u
      join MovieRating as m
      on u.user_id=m.user_id
      group by u.user_id
      order by sl desc, u.name
      limit 1) as b1
union
select b2.title
from (select m.title, avg(rating) as tb
      from Movies as m
      join MovieRating as m1
      on m.movie_id=m1.movie_id
      where month(created_at)=2 and year(created_at)=2020
      group by m.movie_id
      order by tb desc, m.title
      limit 1) as b2


