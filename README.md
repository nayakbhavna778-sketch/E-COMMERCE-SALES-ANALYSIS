# 👥 HR Employee Attrition Analysis

An end-to-end data analytics project that explores **why employees leave a company**. The project covers data cleaning in **Python**, business analysis in **SQL**, and an interactive dashboard in **Power BI**.

---

## 📊 Dashboard Preview

![HR Employee Attrition Dashboard](DASHBOARD%20PREVIEW.jpeg)

---

## 📌 Project Overview

Employee attrition is costly for any organisation: it means lost experience, rehiring costs and lower team productivity. This project analyses an HR dataset of **1,470 employees** to understand how attrition relates to factors such as department, job role, overtime, income and tenure.

**Key numbers**

| Metric | Value |
|--------|-------|
| Total employees | 1,470 |
| Columns | 35 |
| Employees who left | 237 |
| Overall attrition rate | ~16.1% |

---

## 🎯 Objectives

- Inspect and clean the HR dataset (data types, missing values, duplicates)
- Measure the overall attrition rate
- Find which departments and job roles see the most attrition
- Study the link between attrition and overtime, income and years at the company
- Present the findings in an interactive Power BI dashboard

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python (pandas)** | Data inspection and cleaning |
| **SQL (MySQL)** | Business analysis queries |
| **Power BI** | Interactive dashboard and visualisation |
| **Jupyter / Google Colab** | Notebook environment |

---

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `HR-Employee-Attrition-cleaning.ipynb` | Python notebook with data inspection and cleaning steps |
| `HR-Employee-cleaned.csv` | Cleaned dataset used for SQL and Power BI |
| `SQL QUERIES HR EMPLOYEE ATTRITION.sql` | SQL queries for attrition, department, income, overtime, job role and tenure analysis |
| `HR EMPLOYEE ATTRITION DASHBOARD.pbix` | Interactive Power BI dashboard |
| `DASHBOARD PREVIEW.jpeg` | Screenshot of the dashboard |
| `README.md` | Project documentation |

---

## 🔄 Project Workflow

### 1. Data Cleaning (Python)
- Loaded the dataset and checked its structure with `head()` and `info()`
- Checked for **missing values** and **duplicate records**
- Reviewed the attrition split (1,233 stayed vs 237 left)
- Saved the cleaned dataset for analysis

### 2. Data Analysis (SQL)
Queries written to answer questions such as:
- How many employees are there, and how many have left?
- What is the overall attrition rate?
- Which departments have the most employees and the most leavers?
- What is the average monthly income by department, and which 5 job roles earn the most on average?
- How many employees who work overtime have left?
- Which job roles see the most attrition?
- Do employees who leave have a shorter tenure than those who stay?

### 3. Dashboard (Power BI)
An interactive dashboard that visualises attrition across departments, job roles, overtime, income and tenure.

---

## 💡 Business Insights

- **Overall attrition:** About **1 in 6 employees (~16.1%)** has left the company: 237 out of 1,470.
- **Imbalanced data:** 1,233 employees stayed versus 237 who left, so any future prediction model needs to account for this imbalance.
- **Department:** `[ADD: department with the most leavers and its attrition rate]`
- **Job role:** `[ADD: job roles with the highest attrition]`
- **Overtime:** `[ADD: number/share of leavers who worked overtime, compared with employees who did not]`
- **Income:** `[ADD: how average monthly income differs between departments / job roles]`
- **Tenure:** `[ADD: average years at company for employees who left vs stayed]`

---

## ✅ Business Recommendations

> Based on the insights above, the company can consider the following actions. Keep the points that your results support and remove the rest.

1. **Focus retention efforts on high-attrition departments and roles.** Run exit interviews and stay surveys there to find the specific reasons people leave.
2. **Review overtime and workload.** If overtime employees leave more often, balance workloads, hire for peak periods and avoid long-term reliance on overtime.
3. **Review pay competitiveness.** If leavers are concentrated in lower-income roles, benchmark salaries against the market and revisit raises and incentives.
4. **Support early-tenure employees.** If people tend to leave within the first few years, improve onboarding, mentoring and career-path conversations.
5. **Track attrition regularly.** Use the Power BI dashboard to monitor attrition by department, role and tenure so problems are spotted early.

---

## 🏁 Conclusion

This project analysed the records of **1,470 employees** and found an overall attrition rate of about **16.1%** (237 employees left). The dataset had no missing values or duplicate records, so it was ready for analysis straight away.

Using **Python** for data inspection, **SQL** for business analysis and **Power BI** for visualisation, the project looked at how attrition varies across departments, job roles, overtime, income and tenure. `[ADD: one line on the biggest driver of attrition from your results]`

The findings can help HR teams identify where employees are most likely to leave and take targeted steps, such as reviewing workload, pay and early-career support, to improve retention.

**Future scope:** build a machine learning model to predict which employees are at risk of leaving, keeping in mind that the data is imbalanced (1,233 stayed vs 237 left).

---

## 🚀 How to Use This Project

1. Clone the repository
   ```bash
   git clone https://github.com/nayakbhavna778-sketch/HR-EMPLOYEE-ATTRITION-ANALYSIS.git
   ```
2. Open `HR-Employee-Attrition-cleaning.ipynb` in Jupyter Notebook or Google Colab to view the cleaning steps.
3. Run `SQL QUERIES HR EMPLOYEE ATTRITION.sql` in MySQL after loading `HR-Employee-cleaned.csv` into the `hr_employee_attrition` table.
4. Open `HR EMPLOYEE ATTRITION DASHBOARD.pbix` in Power BI Desktop to explore the dashboard.

---

## 👩‍💻 About Me

Hi, I'm **Riddhi**, a student based in Delhi, India, with a growing interest in data analytics. I enjoy turning raw data into clear insights and I work with **Python (pandas, NumPy), SQL, Power BI and Tableau**.

This project is part of my data analytics portfolio, where I practise the full workflow: cleaning data, analysing it with SQL and presenting it visually.

📫 **Connect with me:** [LinkedIn](add-your-link) | [Email](mailto:add-your-email)

---

⭐ If you found this project useful, feel free to star the repository!
