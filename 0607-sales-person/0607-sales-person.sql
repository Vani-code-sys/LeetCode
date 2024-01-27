# Write your MySQL query statement below
select sp.name from salesperson sp
where sp.sales_id not in (select o.sales_id from orders o, company c, salesperson sp1
                   where o.com_id = c.com_id and
                         o.sales_id = sp1.sales_id and 
                         c.name = 'RED');