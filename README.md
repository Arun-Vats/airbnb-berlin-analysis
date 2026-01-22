# 🏠 Airbnb Berlin Data Analysis

<div align="center">

![Berlin](https://img.shields.io/badge/Location-Berlin-red)
![Python](https://img.shields.io/badge/Python-3.8+-blue)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791)
![PowerBI](https://img.shields.io/badge/BI-Power%20BI-F2C811)
![Status](https://img.shields.io/badge/Status-Complete-success)

*An end-to-end data analysis project exploring pricing patterns, availability, and demand across Berlin's Airbnb market*

[Overview](#-project-overview) • [Dataset](#-dataset) • [Analysis](#-analysis-workflow) • [Insights](#-key-insights) • [Structure](#-repository-structure)

</div>

---

## 📊 Project Overview

This project analyzes Airbnb listings in Berlin to understand pricing patterns, availability, and demand across different neighbourhoods and room types.

### 🎯 Objectives
The analysis demonstrates an end-to-end data analyst workflow:
- **Python** for data cleaning and exploratory analysis
- **SQL (PostgreSQL)** for database-level analysis  
- **Power BI** for interactive dashboarding

The focus is on clear business questions, reproducible analysis, and realistic tooling commonly used in industry.

---

## 📁 Dataset

The dataset contains comprehensive Airbnb listings for Berlin, including:

| Feature | Description |
|---------|-------------|
| 💰 **Price & Room Type** | Listing prices and accommodation types |
| 📍 **Location Data** | Neighbourhood groups and coordinates |
| 📅 **Availability** | Booking availability metrics |
| ⭐ **Reviews** | Number of reviews per listing |
| 👤 **Host Information** | Host and listing metadata |

**Data Source:** `data/raw/listings.csv`  
*The raw dataset is stored unchanged to ensure reproducibility.*

---

## 🛠️ Tools & Technologies

<table>
  <tr>
    <td align="center"><b>📊 Analysis</b></td>
    <td>Python (pandas, numpy, matplotlib)</td>
  </tr>
  <tr>
    <td align="center"><b>🗄️ Database</b></td>
    <td>PostgreSQL</td>
  </tr>
  <tr>
    <td align="center"><b>📈 Visualization</b></td>
    <td>Power BI Desktop</td>
  </tr>
  <tr>
    <td align="center"><b>⚙️ Version Control</b></td>
    <td>Git & GitHub</td>
  </tr>
</table>

---

## 🔍 Analysis Workflow

### 1️⃣ Python Analysis

**Exploratory Data Analysis & Cleaning**
- ✅ Loaded and explored raw Airbnb data
- ✅ Validated data types, identified missing values and distributions
- ✅ Handled missing prices using median imputation by room type
- ✅ Filtered extreme outliers for robust statistical analysis

**Key Analyses:**
- 📊 Price distribution patterns
- 🏘️ Price variations by neighbourhood
- 🏠 Price segmentation by room type
- 📈 Correlation between price and review count

**Output:** `notebooks/airbnb_berlin_analysis.ipynb`

---

### 2️⃣ SQL Analysis (PostgreSQL)

**Database-Level Analytics**
- 🗃️ Imported raw data into PostgreSQL
- 📝 Performed complex queries using CTEs and aggregations
- 📊 Calculated median prices with `PERCENTILE_CONT`

**Business Questions Addressed:**
- What are the price patterns across neighbourhoods?
- How do prices vary by room type?
- Is there a relationship between price and demand (reviews)?

**SQL Scripts:**
```
sql/
├── 01_table_creation.sql
├── 02_price_by_neighbourhood.sql
├── 03_price_by_room_type.sql
└── 04_price_vs_reviews.sql
```

---

### 3️⃣ Power BI Dashboard

**Interactive Stakeholder Reporting**

Built a professional one-page dashboard with direct PostgreSQL connectivity.

**📌 Key Features:**
- 💵 Average price metrics
- 🏘️ Total listings by area
- 📅 Availability insights
- 🗺️ Neighbourhood price comparisons
- 🏠 Room type analysis

> **Note:** Light filtering applied to reduce outlier impact while maintaining data integrity.

**Dashboard File:** `dashboard/airbnb_berlin_dashboard.pbix`

**Preview:**

![Power BI Dashboard](figures/powerbi_dashboard.png)

---

## 💡 Key Insights & Practical Takeaways

### 🏆 Main Findings

| Insight | Details |
|---------|---------|
| **🏢 Pricing Structure** | Entire homes/apartments command premium prices across all neighbourhoods, while private and shared rooms offer budget-friendly alternatives |
| **📍 Location Premium** | Central neighbourhoods (Prenzlauer Berg, Alexanderplatz) show 20-40% higher prices than outer districts |
| **💰 Budget Options** | Shared and private rooms provide significantly lower prices, ideal for cost-conscious travelers |
| **📊 Market Dynamics** | High listing density indicates a competitive market with substantial price and availability variation |

### 🎯 Business Implications
- Clear price segmentation by room type and location
- Opportunities for both premium and budget market positioning
- Location remains a key price driver in Berlin's Airbnb market

---

## 📂 Repository Structure
```
airbnb-berlin-analysis/
│
├── 📊 data/
│   └── raw/
│       └── listings.csv
│
├── 📓 notebooks/
│   └── airbnb_berlin_analysis.ipynb
│
├── 🗄️ sql/
│   ├── 01_table_creation.sql
│   ├── 02_price_by_neighbourhood.sql
│   ├── 03_price_by_room_type.sql
│   └── 04_price_vs_reviews.sql
│
├── 📈 dashboard/
│   └── airbnb_berlin_dashboard.pbix
│
├── 🖼️ figures/
│   ├── price_distribution.png
│   ├── price_by_neighbourhood.png
│   ├── price_by_room_type.png
│   ├── price_vs_reviews.png
│   └── powerbi_dashboard.png
│
└── 📝 README.md
```

---

## 📝 Notes

> This project is designed as a **junior data analyst portfolio project**, emphasizing:
> - ✨ **Clarity** in communication and documentation
> - ✅ **Correctness** in analysis methodology
> - 🏢 **Realistic workflows** used in industry settings
> 
> The focus is on demonstrating core analytical skills rather than advanced modeling or complex visual design.

---

<div align="center">

### 🚀 Ready to Explore?

Start with the [Jupyter Notebook](notebooks/airbnb_berlin_analysis.ipynb) or dive into the [SQL queries](sql/)!

**Made with ❤️ for data analysis**

</div>
