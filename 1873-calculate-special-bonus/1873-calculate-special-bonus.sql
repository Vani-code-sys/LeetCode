# Write your MySQL query statement below
select employee_id,
    CASE 
        WHEN (((employee_id %2) != 0)  AND (name REGEXP '^[^M]')) THEN salary
        ELSE  0
      END as bonus
from Employees
order by employee_id;