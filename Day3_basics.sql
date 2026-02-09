Q1:-Fetch employee name and their department name.
Select e.emp_name,d.dept_name from Employees e inner join Department d on e.dept_id=d.dept_id;

Q2:-Fetch all employees working in "IT" department.
Select e.emp_name,d.dept_name from Employees e inner join Department d on e.dept_id=d.dept_id where d.dept_name='IT';

Q3:-Fetch employee name, department name, and salary.
Select e.emp_name,d.dept_name,e.salary from Employees e inner join Department d on e.dept_id=d.dept_id;

Q4:-Fetch employees whose salary is greater than 70000 along with their department name.
Select e.emp_name,d.dept_name,e.salary from Employees e inner join Department d on e.dept_id=d.dept_id where e.salary>70000;

Q5:-Fetch all employees and their department name (even if department not assigned).
Select e.emp_name,d.dept_name from Employees e left join Department d on e.dept_id=d.dept_id;

Q6:-Fetch employees who do not belong to any department.
Select e.emp_name,d.dept_name from Employees e left join Department d on e.dept_id=d.dept_id where d.dept_id IsNull;

Q7:-Fetch all departments and employees working in them (even if no employees exist).
Select e.emp_name,d.dept_name from Employees e right join Department d on e.dept_id=d.dept_id;

Q8:-Fetch employee name and project name.
Select e.emp_name,p.project_name from Employees e inner join Projects p on e.emp_id=p.emp_id;

Q9:-Fetch employees who are not assigned to any project.
Select e.emp_name from Employees e inner join Projects p on e.emp_id=p.emp_id where p.emp_id IsNull;

Q10:-Fetch project name along with employee department name.
Select p.project_name, d.dept_name from Projects p inner join Employees e on p.emp_id = e.emp_id
inner join Department d on e.dept_id = d.dept_id;

Q11:-Fetch employee name, department name, and project name.
Select e.emp_name,p.project_name, d.dept_name from Projects p inner join Employees e on p.emp_id = e.emp_id
inner join Department d on e.dept_id = d.dept_id;

Q12:-Fetch department name and count of employees in each department.
Select d.dept_name,count(e.emp_id) from Employees e inner join Department d on e.dept_id=d.dept_id group by d.dept_name;

Q13:-Fetch department name where employee count is greater than 3.
Select d.dept_name,count(e.emp_id) from Employees e inner join Department d on e.dept_id=d.dept_id group by d.dept_name having count(e.emp_id)>3;

Q14:-Fetch employee name who is working in IT department AND assigned to a project.
Select e.emp_name from Employees e inner join Department d on e.dept_id=d.dept_id inner Join Projects p on e.emp_id=p.emp_id where d.dept_name='IT';

Q15:-Fetch department name and total salary of employees in each department.
Select d.dept_name,sum(e.salary) from Employees e inner join Department d on e.dept_id=d.dept_id group by d.dept_name;
