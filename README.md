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

**Data location:**
```
data/raw/listings.csv
```

---

## Tools & Technologies
- **Python**: pandas, numpy, matplotlib
- **SQL**: PostgreSQL
- **BI Tool**: Power BI Desktop
- **Version Control**: Git & GitHub

---

## Analysis Workflow

### 1. Python Analysis
- Loaded and explored raw Airbnb data
- Handled missing values using median price per room type
- Filtered extreme outliers for robust analysis
- Analyzed:
  - Price distribution
  - Price by neighbourhood
  - Price by room type
  - Relationship between price and number of reviews
- Saved all figures for reproducibility

Notebook:
```
notebooks/airbnb_berlin_analysis.ipynb
```

---

### 2. SQL Analysis (PostgreSQL)
- Imported raw data into PostgreSQL
- Used CTEs and aggregation functions for analysis
- Calculated median prices using `PERCENTILE_CONT`
- Answered the same business questions as in Python:
  - Price by neighbourhood
  - Price by room type
  - Price vs demand (reviews)

SQL scripts:
```
sql/
├── 01_table_creation.sql
├── 02_price_by_neighbourhood.sql
├── 03_price_by_room_type.sql
└── 04_price_vs_reviews.sql
```

---

### 3. Power BI Dashboard
- Connected Power BI directly to PostgreSQL
- Built a one-page dashboard for stakeholder-style reporting
- Included:
  - Key KPIs (average price, total listings, availability)
  - Price by neighbourhood (Top 10)
  - Price by room type
  - Availability by room type
- Applied light filtering to reduce the impact of extreme outliers

Dashboard file:
```
dashboard/airbnb_berlin_dashboard.pbix
```

Dashboard preview:
```
figures/powerbi_dashboard.png
```

---

## Key Insights
- Entire homes/apartments are consistently the most expensive room type
- Private and shared rooms offer significantly lower prices
- Central neighbourhoods tend to have higher median prices
- Availability varies strongly by room type, indicating different hosting strategies
- There is no strong linear relationship between price and number of reviews

---

## Repository Structure
```
airbnb-berlin-analysis/
├── data/
│   └── raw/
│       └── listings.csv
├── notebooks/
│   └── airbnb_berlin_analysis.ipynb
├── sql/
│   ├── 01_table_creation.sql
│   ├── 02_price_by_neighbourhood.sql
│   ├── 03_price_by_room_type.sql
│   └── 04_price_vs_reviews.sql
├── dashboard/
│   └── airbnb_berlin_dashboard.pbix
├── figures/
│   ├── price_distribution.png
│   ├── price_by_neighbourhood.png
│   ├── price_by_room_type.png
│   ├── price_vs_reviews.png
│   └── powerbi_dashboard.png
├── README.md
└── .gitignore
```

---

## Notes
This project is designed as a junior data analyst portfolio project, focusing on clarity, correctness, and realistic workflows rather than advanced modeling or complex visual design.