--a. What do people think about our brand? (overall rating)--


SELECT 
    CONCAT(taste_experience, " ", "(", rating, ")") AS rating, 
    COUNT(*) AS votes,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
WHERE 
    tried_before = 'yes' 
    AND current_brands = 'codex' 
GROUP BY 
    taste_experience, total_res.total_responses
ORDER BY 
    percentage DESC;