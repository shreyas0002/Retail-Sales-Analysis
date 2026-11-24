# Retail Sales Analysis

## Project Overview
An end-to-end Retail Sales Analysis project designed to analyze sales performance, identify business trends, and generate meaningful insights using Python, MySQL, and Power BI.

## Tools & Technologies
- Python
- Pandas
- NumPy
- Matplotlib
- MySQL
- Power BI
- Jupyter Notebook
- Excel

## Project Structure

Retail-Sales-Analysis/
│
├── data/
│   ├── Retail_Sales_Analysis_Raw_Dataset.xlsx
│   └── df_clean.xlsx
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   └── mysql_connection.ipynb
│
├── sql/
│   └── sales_analysis.sql
│
├── report/
│   └── Dashboard.pbix
│
└── README.md

## Project Workflow

### 1. Data Preparation
- Loaded the raw retail sales dataset.
- Examined the dataset structure and data quality.
- Identified missing values, duplicates, and invalid records.

### 2. Data Cleaning
- Handled missing values.
- Removed duplicate records.
- Standardized inconsistent categories.
- Identified and handled invalid financial and quantity values.
- Exported the cleaned dataset.

### 3. MySQL Integration
- Created a MySQL database.
- Connected Python to MySQL using SQLAlchemy.
- Imported the cleaned dataset into MySQL.

### 4. SQL Analysis
Performed business analysis using SQL queries, including:
- Total sales and total orders.
- Average order value.
- Category-wise sales.
- Region-wise sales.
- Monthly sales trends.
- Top-performing products.
- Order status analysis.
- Payment mode analysis.
- Customer sales analysis.

### 5. Power BI Dashboard
Created an interactive dashboard containing:
- Total Sales KPI
- Total Orders KPI
- Total Quantity KPI
- Average Order Value KPI
- Category-wise Sales
- Region-wise Sales
- Monthly Sales Trend
- Order Status Distribution
- Region filter

## Key Learning Outcomes
- Data cleaning and preprocessing using Python.
- Exploratory data analysis.
- Connecting Python with MySQL.
- Writing SQL queries for business analysis.
- Creating interactive dashboards using Power BI.
- Understanding an end-to-end data analysis workflow.
