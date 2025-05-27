
-- Q17: Multi-Session Speakers
-- List speakers conducting more than one session.

SELECT 
    speaker_name,
    COUNT(*) AS session_count
FROM 
    Sessions
GROUP BY 
    speaker_name
HAVING 
    COUNT(*) > 1;
