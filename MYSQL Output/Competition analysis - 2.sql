b. What are the primary reasons consumers prefer those brands over ours?

SELECT
    reasons_for_choosing_brands,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage_of_responses
FROM
    fact_survey_responses_view,
    total_res
WHERE
    Current_brands <> "codex"
GROUP BY
    reasons_for_choosing_brands, total_res.total_responses
ORDER BY
    percentage_of_responses DESC;
