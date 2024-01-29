# Write your MySQL query statement below
select product_id, store, price from 
(
SELECT product_id, 'store1' AS store, store1 AS price FROM products 
UNION 
SELECT product_id, 'store2' AS store, store2 AS price FROM products 
UNION 
SELECT product_id, 'store3' AS store, store3 AS price FROM products
) as tmp
where price is not null;
;