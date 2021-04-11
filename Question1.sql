SELECT 
    CONCAT('T',LPAD(A.id,11,0)) id, 
    A.nickname, 
    CASE 
        WHEN A.status = 0 THEN 'Discontinued'
        WHEN A.status = 1 THEN 'Active'
        WHEN A.status = 2 THEN 'Deactivated'
    END AS status, 
    GROUP_CONCAT(
        DISTINCT 
            CASE WHEN B.role = 1 THEN 'Trainor'
                WHEN B.role = 2 THEN 'Assessor'
                WHEN B.role = 3 THEN 'Staff'
            END
        SEPARATOR  '/'
    ) AS role
FROM trn_teacher A
INNER JOIN trn_teacher_role B ON A.id = B.teacher_id
GROUP BY A.id