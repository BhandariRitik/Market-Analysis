--c. What factors influence respondents' purchase decisions?--

--1) Price Range--

SELECT 
    price_range AS price_range,
    COUNT(*) AS number_of_responses
FROM 
    fact_survey_responses_view
GROUP BY 
    price_range
ORDER BY 
    number_of_responses DESC;


--2) Limited Edition Packaging--

SELECT 
    COUNT(CASE WHEN Limited_edition_packaging = 'Yes' THEN 1 END) AS Yes,
    COUNT(CASE WHEN Limited_edition_packaging = 'No' THEN 1 END) AS No,
    COUNT(CASE WHEN Limited_edition_packaging = 'Not Sure' THEN 1 END) AS Not_Sure
FROM 
    fact_survey_responses_view;