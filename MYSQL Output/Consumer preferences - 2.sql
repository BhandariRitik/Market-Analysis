--b. What packaging preferences do respondents have for energy drinks?--


SELECT
    Packaging_preference,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    Packaging_preference, total_res.total_responses
ORDER BY
    percentage DESC;