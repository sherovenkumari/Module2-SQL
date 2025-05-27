
-- Q22: Duplicate Registrations Check

SELECT 
    user_id,
    event_id,
    COUNT(*) AS registration_count
FROM 
    Registrations
GROUP BY 
    user_id, event_id
HAVING 
    COUNT(*) > 1;
