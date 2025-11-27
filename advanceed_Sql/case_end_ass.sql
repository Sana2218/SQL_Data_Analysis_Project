SELECT 
    COUNT(*) AS total_jobs,
    CASE
        WHEN salary_year_avg >250000 THEN 'High'
        WHEN salary_year_avg BETWEEN 100000 AND 250000 THEN 'Medium'
        WHEN salary_year_avg< 100000 THEN 'LOW'
    END AS salary_catagory
FROM job_postings_fact    
WHERE 
    (salary_year_avg IS NOT NULL) AND job_title_short = 'Data Analyst'
GROUP BY
    salary_catagory    