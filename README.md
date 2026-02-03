# LeetCode SQL 50 Solutions 🚀

This repository contains my solutions to the **LeetCode SQL 50** study plan. As a Product Analyst, I focus on writing optimized queries that provide actionable insights.

## 🛠️ Tech Stack
* **Database:** MySQL / PostgreSQL
* **Topics Covered:**
    * Advanced Joins (Self-Joins, Outer Joins)
    * Window Functions (`RANK`, `Dense_Rank`, `Row Number`, `LEAD`, `LAG`)
    * Subqueries & CTEs (Common Table Expressions)
    * Data Aggregation & Grouping

## 📊 Highlighted Problem: Managers with 5+ Reports
* **Problem Link:** [LeetCode #570]
* **Key Concept:** Self-Join & Group By
* **My Approach:** Used a self-join to map employee IDs to manager IDs, then filtered using `HAVING COUNT(*) >= 5`.
