select sum(QuantitySold) as total_quantity
from SalesData
where Gender='Men' and Size=32 and SaleDate between '2025-01-01' and '2025-03-31';














