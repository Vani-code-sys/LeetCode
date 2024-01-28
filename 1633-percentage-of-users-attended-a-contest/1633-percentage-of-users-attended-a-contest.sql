# Write your MySQL query statement below


select tmp.contest_id, ROUND(count(*) *100/(select count(*) from Users), 2) as percentage from
(select Users.user_id, contest_id, user_name from Users, Register where
Users.user_id = Register.user_id) as tmp
group by tmp.contest_id
order by percentage desc, tmp.contest_id asc;
