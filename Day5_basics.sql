Q1:-Write a CTE to fetch all employees with salary > 60000.
With high_sal As(Select emp_id,emp_name,salary from Employees where salary>60000)
Select * from high_sal;

Q2:-Write a CTE to calculate average salary department-wise.
With dept_avg As(Select dept_id, avg(salary) from Employees group by dept_id)
Select * from dept_avg;

Q3:-Find highest paid employee in each department.
With high_paid As(Select max(salary),dept_id from Employees group by dept_id)
Select * from high_paid;

Q4:-Find top 3 highest paid employees in each department.
With high_paid As(Select emp_id,emp_name, salary,dept_id , dense_rank() Over(Partition by dept_id order by salary desc) as rnk from Employees)
Select * from high_paid where rnk<=3 ;

Q5:-Find 2nd highest paid employee in each department.
With second_high As(Select emp_id,emp_name,salary,dept_id,Dense_Rank() Over (Partition by dept_id order by salary DESC) as rnk from Employees)
Select * from second_high where rnk=2;

Q6:-Find duplicate employees based on emp_name and dept_id.
Select emp_name,dept_id From Employees group by emp_name,dept_id having count(*)>1;

Q7:-Delete duplicates and keep only 1 record (latest emp_id).
With dup_emp_id As ( Select emp_id, emp_name, dept_id, Row_Number() Over (Partition by emp_id) as rn from Employees)
Delete from dup_emp_id where rn>1;

Q8:-Find running total salary department-wise (order by emp_id).
With total_sal As(Select dept_id, emp_id, salary,sum(salary) over(partition by dept_id order by emp_id) From Employees)
Select * from total_sal;

Q9:-Find previous employee salary and next employee salary in same department.
Select emp_id,emp_name,dept_id,salary, Lag(salary) over(Partition by dept_id order by emp_id) As prev_salary,Lead(salary) over(Partition by dept_id order by emp_id) as next_salary from Employees;

Q10:-Find employees who joined first in each department.
Select emp_id,emp_name,dept_id,Joining_date, dense_rank() Over(Partition by dept_id order by Joining_date) as rnk from employees where rnk=1;

Q11:-Find employees who joined last in each department.
Select emp_id,emp_name,dept_id,Joining_date, dense_rank() Over(Partition by dept_id order by Joining_date DESC) as rnk from employees where rnk=1;

Q12:-Find employees who are earning above department average salary.
With dept_avg As(Select emp_id,dept_id, avg(salary) from Employees group by dept_id)
Select * from dept_avg d inner join Employees e on d.dept_id=e.dept_id where e.salary>d.avg(salary);

Q13:-Find department-wise salary percentile (who is in top 10%).
WITH ranked AS (SELECT emp_id, emp_name, dept_id, salary,PERCENT_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS pr FROM Employees)
SELECT * FROM ranked WHERE pr <= 0.10;
