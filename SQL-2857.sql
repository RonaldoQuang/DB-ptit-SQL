select b1.company_name, b2.dept_name, 100.0*coalesce(b2.nu,0)/b1.tong as female_percentage
from (select c.company_name, d.dept_name, count(e.employee_id) as tong
      from companies as c
      join departments as d
      on c.company_id=d.company_id
      join employees as e
      on d.dept_id=e.dept_id
      group by c.company_name, d.dept_name) as b1
join ( select c.company_name, d.dept_name, count(e.employee_id) as nu
            from companies as c
            join departments as d
            on c.company_id=d.company_id
            join employees as e
            on d.dept_id=e.dept_id
            where e.gender='Female'
            group by c.company_name, d.dept_name) as b2
on b1.company_name=b2.company_name and b1.dept_name=b2.dept_name
where 100*coalesce(b2.nu,0)/b1.tong>=60
order by female_percentage desc, b1.dept_name;

















