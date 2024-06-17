-- Subqueries

select *
from employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					from employee_salary
                    where dept_id = 1)
;

select first_name, salary,
(select avg(salary)
from employee_salary) as Average_Salary
from employee_salary;

select *
from
(select gender, avg(age),
 max(age),
 min(age), 
 count(age)
from employee_demographics
group by gender) as Agg_table
;

