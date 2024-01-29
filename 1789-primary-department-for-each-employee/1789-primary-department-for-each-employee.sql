# Write your MySQL query statement below

select employee.employee_id, employee.department_id from employee, 
(SELECT employee_id, count(primary_flag) as count
from employee
group by employee_id) as tmp
where employee.employee_id = tmp.employee_id and
(tmp.count = 1 or employee.primary_flag = 'Y')
order by tmp.employee_id, count

