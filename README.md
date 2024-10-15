# Data_job_market_analysis
This is a comprehensive SQL project in which the job market for data related careers are explored. Data is imported into PostgreSQL database using VScode. Data was imported from csv files (saved locally). Using the create_table operation, four different tables are created. These tables are used to carry out the analysis. 
- job_postings_fact
- company_dim
- skills_dim_job
- skills_dim

## Insights
### Statement 01: Find the top 10 highest paying remote jobs for Data Analyst. Make sure to filter the job_tile_short by Data Analyst
- Top 3 comapnies are Mantys with yearly salary of $650,000, followed by Meta with yearly salary of $336,500. At third, we have AT&T with yearly salary of $229,829
### Statement 02: From Statement 01 output, find out the skills that are needed for these 10 jobs
- SQL, Python and R are the top 3 skills needed for these highest paying jobs
### Statement 03: Find the most in-demand skills for Data Analyst role. Filter by top 5
- For a data analyst, the most in-demand skills are SQL, Excel, Python, Tableau and Power BI. These are present in descending order(SQL has the most demand)
### Statement 04: Find the most promising skills by Average yearly Salary. Filter out top 10
- SVN, Solidity and Couchbase are the most promising skllls based on yearly salary. But these are very less in demand
### Statement 05: Find the most optimal(high demand and top paying) skills for Data Analyst. Focus on remote job posting
- The most promising skills based on highest demand and average salary are Python, R, Tableau, SAS, Power BI and SQL. For skills in intermediate demand, go, hadoop, snowflake are most promising with an average yearly salary of approximately $115.3k, $113.1k and $112.9k respectively. However the average salary for Python and R is $101,397 and $100,499 respectively. 
