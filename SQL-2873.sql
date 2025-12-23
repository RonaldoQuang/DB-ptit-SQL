select b1.ProductID, b1.total_quantity
from (select ProductId, sum(QuantitySold) as total_quantity
      from SalesData
      where Gender='Women' and year(SaleDate)=2025
      group by ProductID) as b1
where b1.total_quantity>=10
order by b1.total_quantity desc;



















