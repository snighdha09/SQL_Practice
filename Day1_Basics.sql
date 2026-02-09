Q1:-Fetch all employee details.
Select * from Employees;

Q2:-Fetch only employee name and salary.
Select name , salary from Employees;

Q3:-Fetch employees whose salary is greater than 60000.
Select * from Employees where salary>60000;

Q4:-Fetch employees who belong to IT department.
Select * from Employees where department='IT';

Q5:-Fetch employees who belong to IT department AND salary > 70000.
Select * from Employees where department='IT' and salary>70000;

Q6:-Fetch employees who are from Delhi OR Mumbai.
Select * from Employees where city='Delhi' or city='Mumbai';

Q7:-Fetch employees whose salary is between 50000 and 90000
Select * from Employees where salary between 50000 and 90000;

Q8:-Fetch employees whose department is in (HR, Finance, Sales).
Select * from Employees where department IN('HR','Sales','Finance');

Q9:-Fetch employees whose name starts with 'A'.
Select * From Employees where name like ('A%');

Q10:-Fetch employees whose name ends with 'n'.
Select * From Employees where name like ('%n');

Q11:-Fetch employees whose name contains 'ra'.
Select * From Employees where name like ('%ra%');

Q12:-Fetch employees whose city is NULL.
Select * From Employees where city isNull;

Q13:-Fetch employees whose joining_date is after '2022-01-01'.
Select * from Employees where joining_date>'2022-01-01';

Q14:-Fetch distinct departments.
Select distinct (department) from Employees;

Q15:-Fetch top 5 highest paid employees.
Select * From Employees order by salary desc limit 5;

Q16:-Fetch employees whose salary is NOT between 40000 and 80000.
Select * from Employees where salary Not between 40000 and 80000;

Q17:-Fetch employees whose department is NOT IT.
Select * From Employees where department <>'IT';

Q18:-Fetch employees where city is NOT NULL.
Select * From Employees where city is not null;



