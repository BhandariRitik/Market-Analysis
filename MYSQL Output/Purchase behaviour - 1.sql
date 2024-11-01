--a. Where do respondents prefer to purchase energy drinks?--


SELECT 
    purchase_location,
    COUNT(*) AS location_preference
FROM 
    fact_survey_responses_view
GROUP BY 
    purchase_location
ORDER BY 
    location_preference DESC;