# 💼 Data Engineer Job Market Analysis

This project performs a detailed SQL-based analysis of job postings data to uncover the most **valuable skills**, **highest-paying roles**, **in-demand technologies**, and **remote opportunities** specifically for **Data Engineer** positions.

---

## 📊 Objectives

The goal of this analysis is to help job seekers, hiring managers, and career advisors understand:

- ✅ Which **skills** are most associated with **high salaries**
- ✅ Which skills are in **highest demand**
- ✅ The **top-paying Data Engineer roles**
- ✅ The **best remote opportunities** in terms of compensation

---

## 🧠 Skills & Tools Used

- **SQL (PostgreSQL / MySQL style)**
- **CTEs (Common Table Expressions)**
- **Aggregations and Joins**
- **Filtering and Ranking Techniques**

---

## 📁 Project Files

| File Name            | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `OptimalSkills.sql`  | SQL script to find skills with high demand and high average salaries        |
| `TopPayingJobs.sql`  | SQL script to extract top-paying Data Engineer roles and remote jobs        |
| `TopPayingRoleSkills.csv` | CSV dataset containing jobs, skills, salaries, and company information |
| `InDemandSkills.sql` | SQL script to find skills in high demand |

---

## 📌 Key Insights

### 🔍 Most In-Demand & Lucrative Skills
Using `OptimalSkills.sql`, we identified skills that are both:
- Frequently required across job listings
- Associated with high average salaries

> **Top Skills:** `Python`, `Spark`, `Hadoop`, `Kafka`, `Scala`, `SQL`, `Pandas`, `Kubernetes`

---

### 💰 Highest Paying Jobs
Using `TopPayingJobs.sql`, we filtered for:
- Data Engineer roles
- With the highest reported average salaries

> **Highest Paying Role:** *Data Engineer @ Engtal* – **$325,000/year**

---

### 🌍 Best Remote Opportunities
The SQL scripts also extract **fully remote jobs** with:
- Competitive salaries
- In-demand technical skillsets

> These roles often include keywords like **AWS**, **GCP**, and **big data pipelines**.

---

## 🔄 How to Use

1. Open the SQL files in your preferred SQL editor (e.g., VS Code, DBeaver, pgAdmin).
2. Connect to your database containing the `job_postings_fact`, `skills_dim`, and `skills_job_dim` tables.
3. Run the scripts:
   - `OptimalSkills.sql` → Find valuable skills
   - `TopPayingJobs.sql` → List high-paying or remote job titles

---

## 📈 Possible Extensions

- Visualize top skills using Python or Tableau
- Analyze trends across different job titles or locations
- Create an interactive dashboard for career exploration

---

## 🧑‍💻 Author

**[OYEWUSI ITEOLUWAKISI]**  
SQL Analyst | Data Enthusiast  
📧 oyewusikisi@gmail.com 
🔗 [LinkedIn](https://www.linkedin.com/in/iteoluwaoyewusi/)

---


Quick note this data was coined from the year 2023 I am pretty sure although the trends might hold up it is unlikely the values and orders do to 
This project was developed  for educational and career exploration purposes

