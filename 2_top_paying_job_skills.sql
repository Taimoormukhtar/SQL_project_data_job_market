/* Find out the skills that are required for top 10 paying jobs
- Job should be Data Analyst
- Job should be remote
*/

WITH top_paying_jobs AS (
    SELECT 
        job_id,
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
    LIMIT 10
)
SELECT 
    top_paying_jobs.*,
    skills_dim.skills
FROM 
    top_paying_jobs
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_jobs.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY 
    Salary DESC;
