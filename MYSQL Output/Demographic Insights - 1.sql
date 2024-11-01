-- a. Who prefers energy drinks more? (male/female/non-binary?)--


SELECT
    gender,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    gender, total_res.total_responses
ORDER BY
    percentage DESC;