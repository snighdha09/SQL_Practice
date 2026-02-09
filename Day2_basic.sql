Q1:-Find total number of employees.
Select Count(*) From Employees;

Q2:-Find total salary paid to all employees.
Select Sum(salary) from Employees;

Q3:-Find average salary of employees.
Select avg(salary) from Employees;

Q4:-Find minimum salary.
Select min(salary) From Employees;

Q5:-Find maximum salary.
Select max(salary) From Employees;

Q6:-Find total employees in each department.
Select department,Count(*) from Employees group by department;

Q7:-Find average salary in each department.
Select department,avg(salary) from Employees group by department;

Q8:-Find total salary in each department.
Select department,sum(salary) from Employees group by department;

Q9:-Find number of employees in each city.
Select city,Count(*) from Employees group by city;

Q10:-Find average salary in each city.
Select city,avg(salary) from Employees group by city;

Q11:-Find departments where employee count is greater than 5.
Select department,Count(*) from Employees group by department having count(*)>5;

Q12:-Find departments where average salary is greater than 70000.
Select department,avg(salary),department from Employees group by department having avg(salary)>70000;

Q13:-Find cities where total salary is greater than 200000.
Select city,sum(salary)city, from Employees group by city having sum(salary)>200000;

Q14:-Find departments where minimum salary is greater than 5000
Select min(salary),department from Employees group by department having min(salary)>5000;

Q15:-Find department-wise highest salary.
Select department,max(salary) from Employees group by department;

Q16:-Find department-wise lowest salary.
Select department,min(salary) from Employees group by department;

Q17:-Find department-wise salary difference (max salary - min salary).
Select department,max(salary)-min(salary) from Employees group by department;

Q18:-Find department-wise total employees and total salary together.
Select department, sum(salary), count(emp_id) from Employees group by department;

Q19:-Find departments having at least 2 employees from Delhi.
Select department, count(*) from Employees where city='Delhi' group by department having count(*)>=2; 