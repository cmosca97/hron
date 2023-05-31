select first_name, last_name, hired, CURRENT_DATE - hired as "days"
from employee
limit 5;

select first_name, last_name, COALESCE(commission::varchar, 'no value')
from employee
limit 10;