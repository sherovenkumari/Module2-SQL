
-- Q10: Feedback Gap
-- List events that had registrations but no feedback submitted.

SELECT 
    e.title AS event_title
FROM 
    Events e
JOIN 
    Registrations r ON e.event_id = r.event_id
LEFT JOIN 
    Feedback f ON e.event_id = f.event_id
WHERE 
    f.event_id IS NULL
GROUP BY 
    e.event_id;
