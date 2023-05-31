select first_name, last_name, phone, hired
from employee
order by last_name, first_name;

select first_name, last_name, phone, hired
from employee
where first_name = 'David' or first_name = 'Peter';

select first_name, last_name, phone, hired
from employee
where department_id = 6;

select first_name, last_name, phone, hired
from employee
where department_id in (3, 5);

select first_name, last_name, phone, hired
from employee
where salary > 10000;

select first_name, last_name, phone, hired
from employee
where salary < 4000 or salary > 15000;

select first_name, last_name, phone, hired
from employee
where department_id in (5, 8) and (salary < 4000 or salary > 15000);

select first_name, last_name, hired
from employee
-- where hired >= '2015-01-01' and hired <= '2015-12-31';
-- where hired between '2015-01-01' and '2015-12-31';
where hired::varchar like '2015%';

select distinct job_id
from employee
order by job_id;

select first_name, last_name, commission
from employee
where commission is not null
order by commission;

SELECT e.first_name, e.last_name, d.name
FROM employee e left outer JOIN department d
USING (department_id)
where last_name = 'Grant';

select first_name, last_name, title
from employee join job
using (job_id);

select e.first_name, e.last_name, city, country_id
from employee e join department using (department_id)
join location using (location_id)
where country_id = 'UK';

select first_name, last_name, name as "team_name"
from employee join team_employee using (employee_id)
join team using (team_id)
where name = 'Green'
order by first_name;
