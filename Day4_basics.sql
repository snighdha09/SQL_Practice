Q1:-Fetch employee name and their manager name.
Select e.emp_name,m.emp_name from Employees e left join Employees m on e.manager_id=m.emp_id;
Q2:-Fetch employees who do not have a manager.
Select emp_name from Employees manager_id IsNull;

Q3:-Fetch employees who have the same manager.
Select e.emp_name,m.emp_name from Employees e inner join Employees m on e.manager_id=m.emp_id order by m.emp_name;

Q4:-Find employees who belong to the same city.
Select e.emp_name from Employees e inner join Employees m on e.city=m.city and e.emp_id<m.emp_id;

Q5:-Find employees who have the same salary.
Select e.emp_name from Employees e inner join Employees m on e.salary=m.salary and e.emp_id<m.emp_id;

Q6:-Find employees who earn more than the average salary.
Select emp_name from Employees where salary>(Select avg(salary) from Employees);

Q7:-Find employees who earn the maximum salary in the company.
Select emp_name from Employees where salary=(Select max(salary) from Employees);

Q8:-Find employees who earn the maximum salary in each department.
Select e.emp_name,d.dept_id,d.dept_name from Employees e inner join Department d on e.dept_id=d.dept_id where e.salary=(Select Max(salary) from Employees where dept_id=e.dept_id);

Q9:-Fetch department name and average salary of each department.
Select d.dept_id,d.dept_name,avg(e.salary) from Employees e inner join Department d on e.dept_id=d.dept_id group by d.dept_id, d.dept_name;

Q10:-Fetch department name and total employees in each department including departments with 0 employees.
Select d.dept_id,d.dept_name,e.emp_name from Employees e right join Department d on e.dept_id=d.dept_id group by d.dept_id, d.dept_name;;

Q11:-Fetch top 2 highest paid employees in each department.
SELECT * FROM(SELECT e.emp_name,d.dept_name,e.salary,DENSE_RANK() OVER (PARTITION BY e.dept_id ORDER BY e.salary DESC) AS rnk_sal FROM Employees e INNER JOIN Department d ON e.dept_id = d.dept_id) t WHERE rnk_sal <= 2;

Q12:-Fetch employees who are earning more than their manager.
Select e.emp_name from Employees e inner join Employees m on e.manager_id=m.emp_id where e.salary>m.salary ;

Q13:-Fetch department name where average salary is greater than overall company average salary.
Select d.dept_id,d.dept_name,avg(e.salary) from Employees e inner join Department d on e.dept_id=d.dept_id group by d.dept_id, d.dept_name HAVING AVG(e.salary) > (SELECT AVG(salary) FROM Employees);