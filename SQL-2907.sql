select b.territory, 
       coalesce(b1.t1,0) as total_hospital_beds, 
       coalesce(b2.t2,0) as total_clinic_beds,
       (coalesce(b1.t1,0)+coalesce(b2.t2,0)) as total_beds
from (select territory from hospitals
      union 
      select territory from clinics) as b
left join (select territory, sum(num_beds) as t1
           from hospitals
           group by territory) as b1
on b.territory=b1.territory
left join (select territory, sum(num_beds) as t2
           from clinics
           group by territory) as b2
on b.territory=b2.territory
order by total_beds desc;

