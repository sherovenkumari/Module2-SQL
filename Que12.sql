
-- Q12: Event with Maximum Sessions
-- Find event(s) with the highest session count.

WITH session_counts AS (
    SELECT 
        e.title,
        COUNT(s.session_id) AS session_count
    FROM 
        Events e
    LEFT JOIN 
        Sessions s ON e.event_id = s.event_id
    GROUP BY 
        e.event_id
)
SELECT 
    title,
    session_count
FROM 
    session_counts
WHERE 
    session_count = (
        SELECT MAX(session_count) FROM session_counts
    );
