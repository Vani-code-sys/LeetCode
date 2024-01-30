# Write your MySQL query statement below
select tmp.query_name, round(avg((tmp.rating/tmp.position)), 2) as quality,
(select round((sum(tmp.rating<3)*100/count(tmp.query_name)), 2)) as poor_query_percentage
from 
(select query_name, result, position, rating from queries
 where query_name is not null
group by query_name, result, position, rating) as tmp
group by query_name
;