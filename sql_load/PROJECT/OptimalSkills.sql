/*DEtermine the most optimal skills 
High demand and High average salary 
*/


-- demand cte
WITH SkillDemand AS (
SELECT 
 skills_dim.skill_id,
 skills,
 COUNT(skills_job_dim.job_id) AS DemandCount
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- Make the check for skills needed by data analyst where its remote and are relatively high paying
WHERE 
     job_title_short = 'Data Engineer' AND job_work_from_home = TRUE AND salary_year_avg >= 75000 AND salary_year_avg IS NOT NULL
-- upon aggregation we always have to group by to specify each count
GROUP BY 
         skills_dim.skill_id
), AverageSalary AS (
    SELECT 
    skills_job_dim.skill_id, 
    ROUND(AVG(salary_year_avg) , 0 ) AS avgSalary --remove decimals
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- Make the check for skills needed by data analyst where its remote and are relatively high paying
WHERE 
     job_title_short = 'Data Engineer' --AND job_work_from_home = TRUE AND salary_year_avg >= 75000 
-- upon aggregation we always have to group by to specify each count  
   AND salary_year_avg IS NOT NULL
GROUP BY skills_job_dim.skill_id
)
SELECT 
  SkillDemand.skill_id,
  SKillDemand.skills,
  DemandCount,
  avgSalary
FROM 
    SkillDemand  --table of interest

INNER JOIN AverageSalary ON SkillDemand.skill_id = AverageSalary.skill_id
WHERE DemandCount >= 10
ORDER BY
       avgSalary  DESC, 
       DemandCount DESC       
LIMIT  25


/*
Implement 2 CTEs to combine previous inferences so as to analyze both demand and pay for each of these skills
by ordering first by salary then by demand to provide the best list possible in terms of skill optimality
*/


