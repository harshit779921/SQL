-- Sting Functions

select first_name, length(first_name)
from employee_demographics
order by 2
;

-- UPPER & lower case

select first_name, upper(first_name)
from employee_demographics
order by 2
;

select first_name, lower(first_name)
from employee_demographics
order by 2
;

-- Substring

select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;

-- Replace

select first_name, replace(first_name, 'Mark','Harshit')
from employee_demographics;

-- Locate

select first_name, locate('r',first_name)
from employee_demographics;

-- Concat

select first_name, last_name,
concat(first_name," ", last_name) as Full_Name
from employee_demographics;

-- TRIM

select trim('      HELLO      ') 

-- ltrim for left trim  rtrim for right trim of white spaces




