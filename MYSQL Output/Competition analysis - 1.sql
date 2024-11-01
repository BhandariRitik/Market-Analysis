a. Who are the current market leaders?


SELECT
    Current_brands AS brands,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS response_percentage
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    Current_brands, total_res.total_responses
ORDER BY
    response_percentage DESC;
