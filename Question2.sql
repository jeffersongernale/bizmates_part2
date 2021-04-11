SELECT A.id, A.nickname, 
(SELECT COUNT(id) from trn_time_table WHERE status = 1 AND teacher_id = A.id) AS Open,
(SELECT COUNT(id) from trn_time_table WHERE status = 3 AND teacher_id = A.id) AS Reserve,
(SELECT COUNT(id) from trn_evaluation WHERE result = 1 AND teacher_id = A.id) AS Taught,
(SELECT COUNT(id) from trn_evaluation WHERE result = 2 AND teacher_id = A.id) AS NoShow
FROM trn_teacher A
LEFT JOIN trn_teacher_role B ON B.teacher_id = A.id
WHERE 
A.status = 1 AND 
(
    '1' IN (SELECT role from trn_teacher_role C WHERE C.teacher_id = A.id ) 
    AND 
    '2' IN (SELECT role from trn_teacher_role C WHERE C.teacher_id = A.id )
)
GROUP BY A.id