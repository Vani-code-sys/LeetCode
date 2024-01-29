# Write your MySQL query statement below
select tmp.employee_id from 
(SELECT Employees.employee_id, name, salary FROM Employees
LEFT JOIN Salaries ON Employees.employee_id = Salaries.employee_id
UNION
SELECT Salaries.employee_id, name, salary FROM Employees 
RIGHT JOIN Salaries ON Employees.employee_id = Salaries.employee_id) tmp
where name is null or salary is null
order by tmp.employee_id;