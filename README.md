🛒 E-Commerce Data Cleaning & Analysis using SQL

SQL data cleaning & analysis project

## 📌 Project Overview
This project demonstrates a complete real-world **data cleaning and analysis workflow using SQL** on messy e-commerce transaction data.  
The dataset originally contained duplicates, missing values, invalid entries, and inconsistent formatting.

The goal was to transform raw data into a **clean, analysis-ready dataset** and produce meaningful business insights.

---

## 🛠️ Tools & Technologies
- MySQL (Command Line)
- SQL
- Visual Studio Code (VS Code)
- Git & GitHub

---

## 🧹 Data Cleaning Process
1. Identified data quality issues:
   - Duplicate records  
   - Negative prices  
   - Missing values  
   - Invalid emails  
   - Inconsistent country and status values  
2. Removed duplicate transactions  
3. Fixed invalid numerical values  
4. Standardized text fields  
5. Handled missing values  
6. Created final clean dataset

All transformation logic is stored in the **scripts** folder.

---

## 📂 Project Structure

```text
ecommerce-data-cleaning/
│
├── data/
│   ├── raw_data.sql
│   └── cleaned_data.sql
│
├── scripts/
│   ├── 01_find_issues.sql
│   ├── 02_remove_duplicates.sql
│   ├── 03_fix_prices.sql
│   ├── 04_standardize_fields.sql
│   ├── 05_handle_missing.sql
│   └── 06_build_reports.sql
│
└── results/
    ├── sales_by_country.csv
    └── revenue_by_category.csv

```
---

## 📊 Business Insights Generated
- Sales distribution by country  
- Revenue by product category  
- Clean dataset ready for reporting and dashboards  

---

## 🚀 How to Run the Project
```sql
SOURCE data/raw_data.sql;
SOURCE scripts/01_find_issues.sql;
SOURCE scripts/02_remove_duplicates.sql;
SOURCE scripts/03_fix_prices.sql;
SOURCE scripts/04_standardize_fields.sql;
SOURCE scripts/05_handle_missing.sql;
SOURCE scripts/06_build_reports.sql;





