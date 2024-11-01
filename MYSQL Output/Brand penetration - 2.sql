--b. Which cities do we need to focus more on?--


WITH cte1 AS (
    SELECT 
        city,
        COUNT(CASE WHEN current_brands = "codex" THEN 1 END) AS in_codex_responses,
        COUNT(*) AS total_responses
    FROM
        fact_survey_responses_view
    GROUP BY
        city
)
SELECT 
    city,
    ROUND(in_codex_responses / total_responses * 100, 2) AS in_codex_responses_percentage,
    in_codex_responses,
    total_responses
FROM 
    cte1
ORDER BY 
    in_codex_responses_percentage ASC;
