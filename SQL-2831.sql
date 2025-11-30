select 
    t.territory,
    count(distinct h.id) as num_hospitals,
    count(distinct c.id) as num_clinics,
    sum(case 
            when h.has_helipad = true then 1 
            else 0 
        end) as num_hospitals_with_helipad
from
    (select territory from hospitals
     union
     select territory from clinics) t
left join hospitals h on t.territory = h.territory
left join clinics c on t.territory = c.territory
group by t.territory;

