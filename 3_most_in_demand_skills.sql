/* Find the most in-demand skills for Data Analyst role
- Count the skills and give top 5 skill roles for Data Analyst 
*/

SELECT 
    skills,
    count(skills_job_dim.job_id) AS skill_demand
FROM 
    job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    skills
ORDER BY
    skill_demand DESC
LIMIT 5;