# Write your MySQL query statement below
select tmp1.student_id, tmp1.student_name, tmp1.subject_name, count(examtaken) as attended_exams from 
(select tmp.student_id, tmp.student_name, tmp.subject_name, examinations.subject_name as examtaken from
    (select students.student_id, students.student_name, subject_name from students 
     cross join subjects
    ) as tmp
 left join examinations
 on tmp.student_id = examinations.student_id
 and tmp.subject_name = examinations.subject_name) as tmp1
group by tmp1.student_id, student_name, subject_name
order by tmp1.student_id,  student_name, subject_name ;