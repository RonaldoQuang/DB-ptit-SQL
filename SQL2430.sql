select c.company_name,
       coalesce(b1.nu,0)*100/(coalesce(b1.nu,0)+coalesce(b2.nam,0)) as female_percentage, 
       coalesce(b2.nam,0)*100/(coalesce(b1.nu,0)+coalesce(b2.nam,0)) as male_percentage
from companies as c
left join (select c.company_id, count(distinct e.employee_id) as nu
           from companies as c
           join departments as d
           on c.company_id=d.company_id
           join employees as e
           on e.dept_id=d.dept_id
           where e.gender='Female'
           group by c.company_id) as b1
on c.company_id=b1.company_id
left join (select c.company_id, count(distinct e.employee_id) as nam
           from companies as c
           join departments as d
           on c.company_id=d.company_id
           join employees as e
           on e.dept_id=d.dept_id
           where e.gender='Male'
           group by c.company_id) as b2
on c.company_id=b2.company_id;