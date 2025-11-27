SELECT 
    name AS company_name

FROM job_postings_fact AS jobs
LEFT JOIN company_dim AS company
ON jobs.company_id = company.company_id

WHERE
    (jobs.job_health_insurance = TRUE) AND
    (EXTRACT(MONTH FROM jobs.job_posted_date) > 3 AND EXTRACT(MONTH FROM jobs.job_posted_date) < 7)
LIMIT 10;    