-- Window Functions

-- Using Group by
select dem.first_name,dem.last_name,gender, avg(salary) as Avg_Salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id =  sal.employee_id
group by dem.first_name,dem.last_name,gender;    

-- using window function Average

select dem.first_name,dem.last_name,gender, 
avg(salary) over(partition by gender )
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id =  sal.employee_id
;

-- using window function Sum

select dem.first_name,dem.last_name,gender, salary,
sum(salary) over(partition by gender order by dem.employee_id ) as rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id =  sal.employee_id
;

-- using window function to find Row number, Rank and Dense rank

select dem.employee_id, dem.first_name,dem.last_name,gender, salary,
row_number() over(partition by gender order by salary desc) as Row_Num,
rank() over(partition by gender order by salary desc) as Rank_Num,
dense_rank()  over(partition by gender order by salary desc) as Dense_rank_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id =  sal.employee_id
;