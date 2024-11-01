--a.What are the preferred ingredients of energy drinks among respondents?--



SELECT
    Ingredients_expected AS Ingredients_preferred,
    COUNT(*) AS number_of_responses,
    ROUND(COUNT(*) / total_res.total_responses * 100, 2) AS percentage
FROM
    fact_survey_responses_view,
    total_res
GROUP BY
    Ingredients_expected, total_res.total_responses
ORDER BY
    percentage DESC;