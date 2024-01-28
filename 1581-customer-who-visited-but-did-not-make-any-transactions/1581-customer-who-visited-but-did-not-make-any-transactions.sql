# Write your MySQL query statement below

select tmp.customer_id, count(IFNULL(tmp.transaction_id, 1)) as count_no_trans
from 
(select customer_id, Visits.visit_id, transactions.transaction_id, transactions.amount from Visits
left join transactions 
on Visits.visit_id = Transactions.visit_id
) as tmp
where isnull(tmp.transaction_id) = 1 
group by customer_id;