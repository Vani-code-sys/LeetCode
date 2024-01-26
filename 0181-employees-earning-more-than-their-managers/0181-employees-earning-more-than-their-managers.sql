# Write your MySQL query statement below
select name as Employee from employee where salary > (select salary from employee as emp2 where emp2.Id = employee.managerId);