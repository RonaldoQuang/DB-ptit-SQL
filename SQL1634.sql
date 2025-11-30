select b1.sl*100.0/b2.sl1 as "Female_Percentage_Sydney(%)"
from (select count(*) as sl
      from Vaccinations 
      where Gender='Female' 
      and City='Sydney') as b1, (select count(*) as sl1
                                 from Vaccinations 
                                 where City='Sydney') as b2

