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
