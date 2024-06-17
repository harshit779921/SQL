-- UNIONS

select first_name, last_name
from employee_demographics
union
select first_name, last_name
from employee_salary;

-- multiple unon to get well organized data

select first_name, last_name, 'OLD Man' as Label
from employee_demographics
where age> 40 and gender = 'Male'
union
select first_name, last_name, 'OLD Lady' as Label
from employee_demographics
where age> 40 and gender = 'Female'
union
select first_name, last_name,'Highly Paid Employee' as Label
from employee_salary
where salary>70000
order by first_name, last_name
;