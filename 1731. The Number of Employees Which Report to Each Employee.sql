SELECT 
    e1.employee_id, 
    e1.name, 
    COUNT(*) AS reports_count,
    ROUND(AVG(e2.age)) AS average_age
FROM 
    Employees e1
inner JOIN 
    Employees e2 ON e1.employee_id  = e2.reports_to
group by e1.employee_id
ORDER BY e1.employee_id;
