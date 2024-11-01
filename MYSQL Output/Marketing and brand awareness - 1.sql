--a. Which marketing channel can be used to reach more customers?--


SELECT
    marketing_channels,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage_responses
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    marketing_channels, total_res.total_responses
ORDER BY
    percentage_responses DESC;
