SELECT 
      EXTRACT(MONTH FROM job_posted_date) AS posted_month,
      COUNT(*) AS total_jobs
FROM job_postings_fact

GROUP BY EXTRACT(MONTH FROM job_posted_date)
ORDER BY posted_month;