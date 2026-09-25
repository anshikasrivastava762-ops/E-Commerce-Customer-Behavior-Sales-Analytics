# E-Commerce-Customer-Behavior-Sales-Analytics
**Author:** Anshika Srivastava
**Date:** September 2026

An end-to-end data analytics project featuring synthetic data generation, MySQL data transformation, and Python-based exploratory data analysis (EDA).

## 📌 Overview
This project analyzes e-commerce customer and transaction data to uncover sales trends, customer behavior patterns, product performance, and return rates. The project demonstrates an end-to-end analytics workflow using SQL and Python, from data cleaning to business insight

Tech Stack:Python (Pandas, NumPy, Seaborn, Matplotlib, SQLAlchemy), MySQL, Jupyter Notebook, Git/GitHub

---
## 🛠 Project Workflow
1. Generated a synthetic dataset containing 1,000 customers and 15,000 transactions.
2. Loaded CSV files into MySQL using SQLAlchemy.
3. Cleaned and transformed raw data using SQL.
4. Created an analytics view (`v_ecommerce_sales`) for reporting.
5. Performed RFM customer segmentation using SQL window functions.
6. Conducted EDA and visualization in Python.
---
## 📊 Key Insights
- **Seasonality:** November and December contributed **33.89%** of total annual revenue, highlighting a strong holiday sales effect.
- **Category Performance:** Revenue varied significantly across product categories, with clear category leaders.
- **Returns Analysis:** Return rates differed across product categories, identifying opportunities for operational improvement.
- **Customer Value:** Customers aged **56-65** had the highest average lifetime spend (**$8,087.55**), followed by the **36-45** age group (**$7,982.58**).
---
## 📈 Dashboard
visualizations/eda_dashboard.png

The dashboard includes:
- Monthly Revenue Trends
- Revenue by Category and Gender
- Return Rate by Product Category
- Customer Spending Analysis
---
## 📂 Repository Structure
```text
├──data/
├── notebooks/
├── sql/
├── visualizations/
│ └── eda_dashboard.png
└── README.md
``` 
---

## 💡 Skills Demonstrated
 
- SQL Data Cleaning & Transformation
- Joins, Views & Aggregations
- Window Functions (NTILE)
- RFM Segmentation
- Exploratory Data Analysis
- Data Visualization
- Database Integration with Python
---
## 🚀 Future Enhancements
 
- Build an interactive Power BI/Tableau dashboard
- Apply K-Means clustering to RFM scores
- Perform Market Basket Analysis
- Develop customer churn prediction models
- Perform Market Basket Analysis
- Develop customer churn prediction models
