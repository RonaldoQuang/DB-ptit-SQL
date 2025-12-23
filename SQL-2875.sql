select Size, sum(QuantitySold) as total_quantity
from SalesData
where Gender='Women' and year(SaleDate)=2025
group by Size
order by total_quantity desc, Size
limit 1;






















