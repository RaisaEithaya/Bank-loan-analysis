# Bank Loan Analysis Dashboard

## Business Problem Statement

A financial institution aims to gain deeper insights into its loan portfolio to improve decision-making, enhance risk management, and optimize lending strategies. The management team has observed fluctuations in loan applications, funded amounts, repayment behavior, and borrower profiles across different regions and customer segments.

They are particularly interested in identifying key factors such as loan purpose, home ownership status, employment length, interest rates, and borrower financial health that influence loan performance and repayment trends.

Currently, the organization lacks a centralized and interactive system to monitor critical lending KPIs and track Month-to-Date (MTD) and Month-over-Month (MoM) performance.

###Key Business Question:
**How can the organization leverage loan data to identify trends, assess risk, improve loan performance, and support data-driven lending decisions?**

---

## Project Overview

This project focuses on analyzing loan data using:

- **Python** → Data cleaning & preprocessing  
- **PostgreSQL** → Data storage & querying  
- **Power BI** → Interactive dashboard & visualization  

The final output is a **multi-page Power BI dashboard** providing insights into loan performance, borrower behavior, and risk segmentation.

---

## Tools & Technologies

- Python (Pandas)
- PostgreSQL (SQL)
- Power BI
- Git & GitHub

---

## Project Workflow

### 1. Data Preparation (Python)
- Cleaned raw dataset
- Standardized formats
- Performed initial validation

### 2. Data Storage & Analysis (SQL - PostgreSQL)
- Imported processed data into PostgreSQL
- Created structured tables
- Wrote queries to analyze:
  - Loan trends
  - Borrower segmentation
  - Risk categories

### 3. Data Visualization (Power BI)
- Connected Power BI to PostgreSQL
- Built interactive dashboards
- Designed KPI cards and charts

---

##Dashboards

### Dashboard 1: Summary
- Total Loan Applications
- Total Funded Amount
- Total Amount Received
- Average Interest Rate
- Average Debt-to-Income Ratio (DTI)
- MTD & MoM Analysis
- Good loan & Bad loan (Donut chart)
- Loan Status

---

### Dashboard 2: Overview
- Monthly Trends (Line Chart)
- Regional Analysis (Map)
- Employee work Term Distribution (Donut Chart)
- Employment Length Analysis (Bar Chart)
- Loan Purpose Breakdown
- Home Ownership Analysis (Treemap)

---

### Dashboard 3: Details
- Grid view of all loan records
- Detailed borrower and loan-level insights

---

## Key Insights

- Identified trends in loan applications over time  
- Analyzed differences between **Good Loans vs Bad Loans**  
- Evaluated borrower risk using DTI and interest rates  
- Discovered patterns based on region, purpose, and employment  

---

## Deliverables

- Cleaned dataset (Python)
- SQL queries (PostgreSQL)
- Power BI Dashboard (.pbix)
- Insights & analysis report

---

## Project Structure

bank-loan-analysis  
│  
├── data  
│   └── financial_loan.xlsx 
│  
├── python_scripts  
│   └── BankLoanAnalysis.py  
│  
├── sql  
│   └── queries.sql  
│  
├── dashboard  
│   └── BankLoanAnalysisReport.pbix   
│  
└── README.md  
