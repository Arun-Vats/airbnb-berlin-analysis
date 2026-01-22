# Airbnb Berlin Data Analysis

## Project Overview
This project analyzes Airbnb listings in Berlin to understand pricing patterns, availability, and demand across different neighbourhoods and room types.

The analysis demonstrates an end-to-end data analyst workflow:
- Python for data cleaning and exploratory analysis
- SQL (PostgreSQL) for database-level analysis
- Power BI for interactive dashboarding

The focus is on clear business questions, reproducible analysis, and realistic tooling commonly used in industry.

---

## Dataset
The dataset contains Airbnb listings for Berlin and includes information such as:
- Listing price and room type
- Neighbourhood and location coordinates
- Availability and number of reviews
- Host and listing metadata

The raw dataset is stored unchanged to ensure reproducibility.

Data location:
data/raw/listings.csv

---

## Tools & Technologies
- Python: pandas, numpy, matplotlib
- SQL: PostgreSQL
- BI Tool: Power BI Desktop
- Version Control: Git & GitHub

---

## Analysis Workflow

### 1. Python Analysis
- Loaded and explored raw Airbnb data
- Checked data types, missing values, and distributions
- Handled missing prices using median price per room type
- Filtered extreme outliers for more robust analysis
- Analyzed pricing, neighbourhoods, room types, and reviews
- Saved figures for reproducibility

Notebook:
notebooks/airbnb_berlin_analysis.ipynb

---

### 2. SQL Analysis (PostgreSQL)
- Imported raw data into PostgreSQL
- Used CTEs and aggregation functions
- Calculated median prices using PERCENTILE_CONT
- Answered the same business questions as Python

SQL scripts:
sql/

---

## Power BI Dashboard
A one-page Power BI dashboard was created for stakeholder-style reporting, connected directly to PostgreSQL.

Dashboard file:
dashboard/airbnb_berlin_dashboard.pbix

Dashboard preview:
figures/powerbi_dashboard.png

---

## Key Insights & Practical Takeaways
- Entire homes and apartments have the highest prices
- Private and shared rooms are more affordable
- Central neighbourhoods show higher typical prices
- The market is competitive with wide price variation

---

## Notes
This project is designed as a junior data analyst portfolio project, focusing on clarity, correctness, and realistic workflows.