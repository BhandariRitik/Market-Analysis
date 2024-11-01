--b. What are the typical consumption situations for energy drinks among respondents?--

SELECT 
    Typical_consumption_situations,
    COUNT(*) AS situation_preference
FROM 
    fact_survey_responses_view
GROUP BY 
    Typical_consumption_situations
ORDER BY 
    situation_preference DESC;