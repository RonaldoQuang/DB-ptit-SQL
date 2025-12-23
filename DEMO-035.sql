select b.City, (coalesce(b1.tong1,0)+coalesce(b2.tong2,0)) as TotalRevenue
from (select City from OnlineOrder
      union 
      select City from StoreOrder) as b
left join (select City, sum(Amount) as tong1
           from OnlineOrder
           group by City) as b1
on b.City=b1.City
left join (select City, sum(Amount) as tong2
           from StoreOrder
           group by City) as b2
on b.City=b2.City
order by b.City;
