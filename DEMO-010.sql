delete o
from ORDER_ITEM as o
join PRODUCT as p
on p.ProductID=o.ProductID
join CATEGORY as c
on c.CategoryID=p.CategoryID
where (c.CategoryName='Obsolete' or p.Discontinued=1);