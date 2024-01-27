# Write your MySQL query statement below     
select max(tmp1.num) as num from 
    (select tmp.num as num, tmp.rowcnt as rowscount from 
           (select num, count(*) as rowcnt from myNumbers group by num) 
            as tmp
     where tmp.rowcnt = 1
    ) as tmp1
;


