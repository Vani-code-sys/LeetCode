# Write your MySQL query statement below


select user_id, time_stamp as last_stamp from Logins L1
where time_stamp = (SELECT MAX(time_stamp) FROM Logins L2 
                    WHERE l1.user_id = l2.user_id and 
                    time_stamp regexp '^2020-*');
