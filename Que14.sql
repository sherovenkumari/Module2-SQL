
-- Q14: Most Registered Events
-- Show top 3 events by number of registrations.

SELECT 
    e.title AS event_title,
    COUNT(r.registration_id) AS total_registrations
FROM 
    Events e
JOIN 
    Registrations r ON e.event_id = r.event_id
GROUP BY 
    e.event_id
ORDER BY 
    total_registrations DESC
LIMIT 3;
