select b2.territory, round(100*coalesce(b1.sl1,0)/b2.sl2,2) as helipad_rate
from (select territory, count(*) as sl1
      from hospitals
      where has_helipad is true
      group by territory) as b1
right join (select territory, count(*) as sl2
            from hospitals
            group by territory) as b2
on b1.territory=b2.territory
order by helipad_rate desc;
