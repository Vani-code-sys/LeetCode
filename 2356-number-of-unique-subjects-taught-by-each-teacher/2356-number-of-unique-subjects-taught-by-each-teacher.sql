# Write your MySQL query statement below
select teacher_id, count(subject) as cnt from (
 select teacher_id, count(*) as subject from Teacher
 group by teacher_id, subject_id) as sub
group by teacher_id;
