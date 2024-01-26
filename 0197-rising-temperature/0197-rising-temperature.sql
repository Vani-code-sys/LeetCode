# Write your MySQL query statement below
select id from Weather W1
where temperature > (select W2.temperature from Weather W2
             where DATEDIFF (W2.recordDate , W1.recordDate ) = -1
             order by W2.recordDate desc limit 1)
order by recordDate;

