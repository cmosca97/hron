select max(salary) as "max", min(salary) as "min", 
sum(salary) as "sum", round(avg(salary)) as "average"
from employee;

select max(salary) as "max", min(salary) as "min", 
sum(salary) as "sum", round(avg(salary)) as "average"
from employee
GROUP BY job_id;

select count(employee_id)
from employee
GROUP BY job_id;

select count(*)
from employee
WHERE job_id = 15;

SELECT j.title as "job_title", count(*)
FROM employee e join job j
using(job_id)
group by j.title
having j.title = 'Programmer';

select count(distinct manager_id)
from employee;

select first_name, last_name
from employee
where employee_id not in (
    select distinct manager_id
    from employee
    where manager_id is not null
);

select max(salary) - min(salary) as "delta"
from employee;

select max(salary) - min(salary) as "delta"
from employee
GROUP BY job_id
having max(salary) != min(salary)
-- order by 1 desc;
order by delta desc;

select min(salary), manager_id
from employee
group BY manager_id
having manager_id is not null and min(salary) >= 6000
order by manager_id;

select min(salary), manager_id
from employee
where manager_id is not null
group BY manager_id
having min(salary) >= 6000
order by manager_id;
