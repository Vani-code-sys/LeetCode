# Write your MySQL query statement below
select name,  IFNULL(travelled_distance,0) as travelled_distance from (
    select name, sum(distance) as travelled_distance from Users 
    left join Rides
    on Users.id = Rides.user_id
    group by user_id, name) as tmp
order by travelled_distance desc, name asc; 