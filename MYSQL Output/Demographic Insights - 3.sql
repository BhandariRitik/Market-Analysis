--c. Which type of marketing reaches the most Youth (15-30)?--



SELECT
    marketing_channels,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
WHERE
    age IN ("15-18", "19-30")
GROUP BY
    marketing_channels, total_res.total_responses
ORDER BY
    percentage DESC
LIMIT 1;