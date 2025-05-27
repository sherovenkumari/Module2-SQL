
-- Q3: Inactive Users
-- Retrieve users who haven't registered for any event in the last 90 days.

SELECT 
    u.user_id,
    u.full_name,
    u.email
FROM 
    Users u
WHERE 
    u.user_id NOT IN (
        SELECT 
            r.user_id
        FROM 
            Registrations r
        WHERE 
            r.registration_date >= CURDATE() - INTERVAL 90 DAY
    );
