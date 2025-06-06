
-- Q11: Daily New User Count
-- Show count of users registered each day in the last 7 days.

SELECT 
    registration_date,
    COUNT(user_id) AS new_users
FROM 
    Users
WHERE 
    registration_date >= CURDATE() - INTERVAL 7 DAY
GROUP BY 
    registration_date
ORDER BY 
    registration_date;
