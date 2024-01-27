# Write your MySQL query statement below

select sub.actor_id, sub.director_id from
(select actor_id, director_id, count(*) as cnt from actordirector 
group by actor_id, director_id) as sub
where sub.cnt >= 3
group by sub.actor_id, sub.director_id;
