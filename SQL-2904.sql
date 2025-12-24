select b1.t1 as Title1, b2.t2 as Title2, count(*) as co_exhibit_count
from (select a.artworkid as id1, a.title as t1, e.exhibitionid as e1
      from Artworks as a
      join Exhibitions as e
      on a.ArtworkID=e.ArtworkID) as b1
join (select a.artworkid as id2, a.title as t2, e.exhibitionid as e2
      from Artworks as a
      join Exhibitions as e
      on a.ArtworkID=e.ArtworkID) as b2
on b1.t1<>b2.t2 and b1.e1=b2.e2 and b1.id1<b2.id2
group by Title1, Title2
order by co_exhibit_count desc, Title1, Title2;



















