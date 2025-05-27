
-- Q21: Top Feedback Providers

SELECT 
    u.full_name,
    COUNT(f.feedback_id) AS feedback_count
FROM 
    Users u
JOIN 
    Feedback f ON u.user_id = f.user_id
GROUP BY 
    u.user_id
ORDER BY 
    feedback_count DESC
LIMIT 5;
