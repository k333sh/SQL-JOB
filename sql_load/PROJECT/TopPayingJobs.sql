/*
What skills are needed for the Top 10 highest paying data engineering jobs avaailable remotely 
a) find the highest paying remote data analyst jobs
b) focus on jobs with available salaries
*/

--Implement CTE 
WITH top_paying_jobs AS(

SELECT
     job_id,
     job_title,
     salary_year_avg,
     name AS CompanyName --get what companies offer these roles also
FROM 
     job_postings_fact     
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id --join based on IDS in job Postings    
WHERE 
     job_title_short = 'Data Engineer' AND 
     --remove nullls
     job_location = 'Anywhere' AND
     salary_year_avg IS NOT NULL
--Highest Paying
ORDER BY salary_year_avg DESC
--The top 10 
LIMIT 10

)

SELECT*
FROM top_paying_jobs
-- Make use of inner join cause we only want the salries of jobs that require skills for this analysis
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- Quite a fair bit of content to consume so I went ahead and created a csv file to view in excel

/*
 Most In-Demand skills for DATA ENGINEERS : 
Top skills required across multiple high-paying jobs (based on frequency):
Python – 7 roles
Spark – 5 roles
Hadoop, Kafka, Scala – 3 roles each
Pandas, NumPy, PySpark, Kubernetes, SQL – 2 roles each
*/




