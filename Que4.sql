
-- Q4: Peak Session Hours
-- Count how many sessions are scheduled between 10 AM and 12 PM per event.

SELECT 
    e.title AS event_title,
    COUNT(s.session_id) AS session_count
FROM 
    Events e
JOIN 
    Sessions s ON e.event_id = s.event_id
WHERE 
    TIME(s.start_time) BETWEEN '10:00:00' AND '12:00:00'
GROUP BY 
    e.event_id;
