# Write your MySQL query statement below
SELECT S.student_id, S.student_name, SU.subject_name,
    (SELECT COUNT(1) 
     FROM Examinations E
     WHERE E.student_id = S.student_id 
       AND E.subject_name = SU.subject_name) AS attended_exams
FROM Students S 
JOIN Subjects SU 
ORDER BY S.student_id, SU.subject_name;
