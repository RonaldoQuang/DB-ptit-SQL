select m.name
from MovieStar as m
join StarsIn as s
on m.name=s.starName
where m.gender='F' and movieTitle='Star Wars';

