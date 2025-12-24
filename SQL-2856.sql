select c.company_name, 
       round(count(e.employee_id)/count(distinct d.dept_id),2) as avg_employees_per_department
from companies as c
join departments as d
on c.company_id=d.company_id
join employees as e
on d.dept_id=e.dept_id
group by c.company_name
order by avg_employees_per_department desc
limit 3;














