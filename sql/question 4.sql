SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    s.email AS staff_email,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM staffs s
LEFT JOIN staffs m ON s.manager_id = m.staff_id;
