# Write your MySQL query statement below
select product_id, product_name from product
where product_id in (
SELECT product_id
FROM sales where product_id not in (
select product_id from sales s1
 where s1.sale_date not between '2019-01-01' and '2019-03-31') 
 group by product_id);

