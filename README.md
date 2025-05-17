# DataAnalytics-Assessment

# Cowrywise Data Analyst Technical Assessment by Oyindamola Sarah 

This repository contains my responses to the SQL-based technical assessment for the Data Analyst role at Cowrywise. Each query is designed to solve a real business challenge based on customer activity data.

---

##  Q1: Cross-Sell Opportunity

**Objective:** Identify customers who have both regular savings and investment plans to target for cross-selling.  
**Logic:** Select distinct users who own plans marked as both `is_a_fund = 1` and `is_regular_savings = 1`.

---

##  Q2: Frequency Segmentation

**Objective:** Classify users based on how frequently they save.  
**Logic:** Count transactions per user and segment as:
- Monthly Saver (12+ transactions)
- Quarterly Saver (4–11)
- Occasional Saver (1–3)
- Inactive (0)

---

##  Q3: Inactive Customers

**Objective:** Identify customers who have not performed any savings or withdrawal transactions in the past 12 months.  
**Logic:** Return users who do **not** appear in any savings or withdrawal transaction in the last year.

---

##  Q4: Customer Lifetime Value (CLV)

**Objective:** Estimate the financial value each customer has brought to the platform.  
**Logic:** CLV = Total Savings - Total Withdrawals, per customer.

---

##  Files

- `Assessment_Q1.sql`  
- `Assessment_Q2.sql`  
- `Assessment_Q3.sql`  
- `Assessment_Q4.sql`  
  

---

## ✨ Submission by:
**Oyindamola Sarah**  
LinkedIn http://www.linkedin.com/in/sarah-oyindamola | Data Analyst | Python | SQL | Excel | Power BI
