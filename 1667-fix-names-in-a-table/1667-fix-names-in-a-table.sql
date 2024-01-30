# Write your MySQL query statement below
select user_id, concat ( upper(substring(name,1,1)), lower(right(name,length(name)-1))) as name from users
order by user_id;