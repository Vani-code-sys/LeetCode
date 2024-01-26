# Write your MySQL query statement below
select email from Person 
where (select count(*) from Person as P2 where Person.email=P2.email) > 1
group by email; 
