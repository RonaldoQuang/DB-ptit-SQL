select distinct b1.Title
from (select a.Title, e.ExhibitionID
      from Artworks as a
      join Exhibitions as e
      on a.ArtworkID=e.ArtworkID
      where a.Title<>'Sunflowers') as b1
join (select e.ExhibitionID
      from Artworks as a
      join Exhibitions as e
      on a.ArtworkID=e.ArtworkID
      where a.Title='Sunflowers') as b2
on b1.ExhibitionID=b2.ExhibitionID;