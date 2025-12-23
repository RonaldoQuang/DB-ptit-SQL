select b1.t1+b2.t2 as num_revenue
from (select sum(subscription_fee) as t1
      from mobile_subscribers
      where date between '2025-03-01' and '2025-03-31') as b1,
      (select sum(subscription_fee) as t2
       from broadband_subscribers
       where date between '2025-03-01' and '2025-03-31') as b2