# Write your MySQL query statement below
select id, 
max(Jan_Revenue) as Jan_Revenue, 
max(Feb_Revenue) as Feb_Revenue, 
max(Mar_Revenue) as Mar_Revenue, 
max(Apr_Revenue) as Apr_Revenue,
max(May_Revenue) as May_Revenue, 
max(Jun_Revenue) as Jun_Revenue, 
max(Jul_Revenue) as Jul_Revenue, 
max(Aug_Revenue) as Aug_Revenue,
max(Sep_Revenue) as Sep_Revenue, 
max(Oct_Revenue) as Oct_Revenue, 
max(Nov_Revenue) as Nov_Revenue, 
max(Dec_Revenue) as Dec_Revenue
from
(select id,
  case when month = 'Jan' THEN revenue END as Jan_Revenue ,
  case when month = 'Feb' THEN revenue END as Feb_Revenue,
  case when month = 'Mar' THEN revenue END as Mar_Revenue ,
  case when month = 'Apr' THEN revenue END as Apr_Revenue,
  case when month = 'May' THEN revenue END as May_Revenue ,
  case when month = 'Jun' THEN revenue END as Jun_Revenue,
  case when month = 'Jul' THEN revenue END as Jul_Revenue ,
  case when month = 'Aug' THEN revenue END as Aug_Revenue,
  case when month = 'Sep' THEN revenue END as Sep_Revenue ,
  case when month = 'Oct' THEN revenue END as Oct_Revenue,
  case when month = 'Nov' THEN revenue END as Nov_Revenue ,
  case when month = 'Dec' THEN revenue END as Dec_Revenue
from department) as tmp1
group by id;