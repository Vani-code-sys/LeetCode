SELECT class FROM (
SELECT  class ,
        COUNT(student)
FROM    courses
GROUP BY class
HAVING  COUNT(student) >= 5) AS sub;
