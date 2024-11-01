--b. Which age group prefers energy drinks more?--



SELECT
    age,
    COUNT(*) AS total,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    age, total_res.total_responses
ORDER BY
    percentage DESC;