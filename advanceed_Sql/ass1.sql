SELECT 
    job_title_short AS title,
    SUM(salary_year_avg) AS total_salary_per_year,
    SUM(salary_hour_avg) As total_salary_per_hr

FROM job_postings_fact
   WHERE EXTRACT(MONTH FROM job_posted_date) > 6
GROUP BY
    title;