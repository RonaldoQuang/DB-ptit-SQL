select service_type, sum(subscription_fee) as total_revenue
from (select 'mobile' as service_type, subscription_fee
      from mobile_subscribers
      where date >= '2025-03-01' and date < '2025-04-01'
      union all
      select 'broadband' as service_type, subscription_fee
      from broadband_subscribers
      where date >= '2025-03-01' and date < '2025-04-01') as b1
group by service_type
order by total_revenue desc, service_type asc;
