/*WHAT SKILLS ARE MOST INDEMAND FOR DATA ENGINEER
IDENTIFY TOP 5 MOST INDEMAND SKILLS 
FOCUS IS ON ALL JOB POSTINGS RATHER THAN SOME 
AIDS IN PROVIDING INSIGHTS TO VALUABLE SKILLS FOR JOB SEEKERS
*/

SELECT 
 skills,
 COUNT(skills_job_dim.job_id) AS DemandCount
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- Make the check for skills needed by data analyst where its remote and are relatively high paying
WHERE 
     job_title_short = 'Data Engineer' AND job_work_from_home = TRUE AND salary_year_avg >= 75000 
-- upon aggregation we always have to group by to specify each count
GROUP BY skills
ORDER BY DemandCount DESC
LIMIT 5
