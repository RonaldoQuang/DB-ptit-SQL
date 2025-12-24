select b1.title as Title, b1.exhibitions_count
from (select a.title, count(*) as exhibitions_count
      from Artworks as a
      join Exhibitions as e
      on a.ArtworkID=e.ArtworkID
      group by a.title) as b1
where b1.exhibitions_count>=2
order by exhibitions_count desc, b1.title;














