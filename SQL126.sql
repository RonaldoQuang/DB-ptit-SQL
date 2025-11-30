select s.user_id,
    case
        when thongke.soluong is null then 0.00
        else round(thongke.soluong/thongke.tong,2)
    end as confirmation_rate
from Signups as s
left join (select b1.user_id, b1.sl1 as tong, b2.sl2 as soluong
           from (select user_id, count(*) as sl1
                 from Confirmations
                 group by user_id) as b1
           left join (select user_id, count(*) as sl2
                      from Confirmations
                      where action='confirmed'
                      group by user_id) as b2
           on b1.user_id=b2.user_id) as thongke
on s.user_id=thongke.user_id;