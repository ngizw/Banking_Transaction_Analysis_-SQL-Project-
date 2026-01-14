 # Overview

The Banking Transaction Analysis System is an end-to-end Data Engineering portfolio project that simulates real-world banking data workflows. The project demonstrates how raw transactional data can be transformed into meaningful insights using SQL.

This system is designed to analyze customer accounts and transaction data to uncover transaction trends, customer behavior, account activity, and potential fraud indicators.

## Background

Banks generate large volumes of transactional data daily through customer account activities. Analyzing this data efficiently is essential for monitoring account performance, understanding customer behavior, and identifying potential fraud.

The Banking Transaction Analysis System simulates a modern banking analytics workflow by organizing raw transaction data into structured, analytics-ready datasets. Using SQL tools, the project demonstrates how banking data can be processed, analyzed, and transformed into meaningful business insights.
# The questions I wanted to answer through my SQL queries were:

1. Total balance per customer ?
2. Monthly deposits vs withdrawals ?
3. Top 3 customers by balance ?
4. Identify high-risk customers with large debits ?
5. Find inactive (dormant) accounts ?
6. Running balance per account ?
7. Transaction trends by month ?

# Tools I Used

For my deep dive into the Banking Transactional Analysis, I harnessed the power of several key tools:

* SQL (Structured Query Language): Enabled me to interact with the database, extract insights, and answer my key questions through queries.
* PostgreSQL: As the database management system, PostgreSQL allowed me to store, query, and manipulate the banking transactional data.
* Visual Studio Code: This open-source administration and development platform helped me manage the database and execute SQL queries.
* Git & GitHub: Essential for version control and sharing MySQL scripts and analysis, ensuring collaboration and project tracking.

# The Analysis

Each query for this project aimed at investigating specific aspects of the banking transactional analysis data. Here’s how I approached each question:

## Total balance per customer 

This analysis provides a consolidated view of each customer’s financial position by aggregating balances across all their associated bank accounts.



Here's the breakdown of the Total balance per customer:

In the Banking Transaction Analysis System, this analysis is performed using SQL joins and aggregations between customer and account data. The result enables the bank to:
* Identify customers with the highest overall balances
* Support relationship management and targeted services
* Assess exposure to high-value customers
* Feed downstream analytics and executive dashboards