/* Find the top 10 paying remote jobs for Data Analyst
- Focus on job postings with  yearly salary available (Remove nulls)
- Company name should be present for each of the job posting
- Highlight highest paying jobs for Data Analyst to get the market idea
*/

SELECT 
    job_id,
    job_posted_date :: DATE,
    company_dim.name AS company_name,
    job_title,
    salary_year_avg AS Salary
FROM 
    job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE 
    job_work_from_home = TRUE AND 
    salary_year_avg IS NOT NULL AND
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC
LIMIT 10;
