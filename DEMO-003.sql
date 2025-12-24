select CustID, sum(Total) as TotalRevenue
from SALEORDER
group by CustID
order by CustID;


