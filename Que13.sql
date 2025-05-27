
-- Q13: Average Rating per City
-- Show average feedback rating grouped by city of event.

SELECT 
    e.city,
    ROUND(AVG(f.rating), 2) AS avg_rating
FROM 
    Events e
JOIN 
    Feedback f ON e.event_id = f.event_id
GROUP BY 
    e.city;
