--b. How effective are different marketing strategies and channels in reaching our customers?--


SELECT
    marketing_channels,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage_responses
FROM
    fact_survey_responses_view,
    total_res
WHERE
    current_brands = 'codex' 
GROUP BY
    marketing_channels, total_res.total_responses
ORDER BY
    percentage_responses DESC;
