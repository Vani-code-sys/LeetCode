# Write your MySQL query statement below
select tmp.product_id as product_id, ifnull(round(sum(tmp.unitprice)/sum(units),2),0) as average_price 
from
(select prices.*, unitssold.product_id as usproduct_id, purchase_date, units, units*price as unitprice from Prices
left join UnitsSold
on prices.product_id = unitssold.product_id
and purchase_date between start_date and end_date) as tmp
group by tmp.product_id
;



