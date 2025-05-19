# 📊 User Journey & Feature Adoption Analysis for a SaaS Productivity Platform   

---

## 📌 Project Description

This project simulates a real-world analytics pipeline for a SaaS company (like ClickUp, Notion, or Trello).  
As a **Product Data Analyst**, the goal is to understand how users interact with the platform, identify which features drive engagement, and detect where users drop off in their journey.

---

## 🌐 Project Overview

We generated a realistic, multi-table dataset using Python’s Faker library to mimic user behavior and app usage.  
The end-to-end pipeline uses a modern data stack to transform raw data into insights.

### 🗂️ Core Tables

- `users` – Basic customer profiles  
- `sessions` – Tracks each user login session  
- `events` – In-app activities such as clicks and feature usage  
- `features` – List of platform features with metadata  
- `subscriptions` – Plan changes and revenue tracking  
- `feedback` – User ratings and comments  
- `product_releases` – Feature launch and release notes

### 🧩 Entity Relationship Diagram (ERD)
![ERD Diagram](https://github.com/sajjansaju/dbt-snowflake-saas-analytics/blob/2bc174c04bb947913ba5b0506b22e70947fd4e82/ERD.png?raw=true)

---

## 🎯 Project Objectives

- Simulate a SaaS product environment using normalized synthetic data  
- Build an end-to-end analytics pipeline using modern tools  
- Use **Airbyte** to extract and load raw data from PostgreSQL and API sources into Snowflake  
- Store both transactional and third-party data in **Snowflake** as a centralized data warehouse  
- Transform and model the data using **dbt** to create clean, analytics-ready datasets  
- Visualize product and user engagement insights through **Power BI dashboards**

---

## 🧩 Tech Stack & Architecture

| **Layer**           | **Tool/Platform**      | **Description**                                                                 |
|---------------------|------------------------|---------------------------------------------------------------------------------|
| **Data Generation** | Python + Faker         | Created synthetic data mimicking real user and platform activity               |
| **Source Database** | PostgreSQL             | Acts as OLTP system capturing real-time transactional data                     |
| **Data Pipeline**   | Airbyte                | ELT tool for syncing data from PostgreSQL to Snowflake                         |
| **Data Warehouse**  | Snowflake              | Stores raw and transformed data in a scalable cloud warehouse                  |
| **Transformation**  | dbt (Data Build Tool)  | Cleans, models, and prepares data for analysis                                 |
| **Visualization**   | Power BI               | Dashboards to explore feature adoption and user engagement                     |

---

## ✅ Project Status

Currently transforming data using **dbt** on top of **Snowflake**.  

---

## 📎 Sample Business Questions

- What is the average time between signup and first feature usage?  
- Which features are most used by region or user plan?  
- What’s the 7-day and 30-day retention rate by signup cohort?  
- Do mobile users churn faster than desktop users?  
- Which features are most common among power users?  
- How did product releases impact user behavior?
