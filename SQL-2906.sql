select b1.name, sum(subscription_fee) as total_fee
from (select * from mobile_subscribers
      union all
      select * from broadband_subscribers) as b1
where b1.date between '2025-01-01' and '2025-03-31'
group by b1.name
order by total_fee desc
limit 3;

