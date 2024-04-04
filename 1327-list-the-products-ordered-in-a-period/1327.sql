select tmp1.product_name, tmp1.tmpunit as unit from
    (select product_name, sum(tmp.unit) as tmpunit from products, 
            (select product_id, order_date, unit from Orders 
                where 
                order_date between '2020-02-01' and '2020-02-29'
                ) as tmp
     where tmp.product_id = products.product_id  
     group by product_name) as tmp1
where tmpunit >= 100
group by product_name;
