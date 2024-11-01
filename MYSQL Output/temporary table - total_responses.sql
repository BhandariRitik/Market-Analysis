-- Create a temporary table to hold the total number of responses

CREATE TEMPORARY TABLE total_res AS (
    SELECT COUNT(*) AS total_responses
    FROM fact_survey_responses_view
);
