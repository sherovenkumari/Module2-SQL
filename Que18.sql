
-- Q18: Resource Availability Check
-- Events with no associated resources.

SELECT 
    e.event_id,
    e.title AS event_title
FROM 
    Events e
LEFT JOIN 
    Resources r ON e.event_id = r.event_id
WHERE 
    r.resource_id IS NULL;
