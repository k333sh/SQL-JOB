/*
WHAT SKILLS PAY THE MOST ON AVERAGE
FOCUS ON SPECIFIED SALAY ROLES AND DISREGARD LOCATION 
*/

SELECT skills,
 ROUND(AVG(salary_year_avg) , 0 ) AS AverageSalary --remove decimals
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- Make the check for skills needed by data analyst where its remote and are relatively high paying
WHERE 
     job_title_short = 'Data Engineer' --AND job_work_from_home = TRUE AND salary_year_avg >= 75000 
-- upon aggregation we always have to group by to specify each count  
   AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY  AverageSalary DESC
LIMIT 30