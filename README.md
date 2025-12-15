# Market Minds: End-to-End Marketing Analytics Project

## 📌 Project Overview
This project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI.  
The objective is to analyze customer purchasing behavior and evaluate the effectiveness of marketing campaigns using a cleaned marketing dataset.

The project follows a structured pipeline:
- **Python** for data cleaning, feature engineering, and exploratory analysis  
- **SQL (MySQL)** for validating insights and performing analytical queries  
- **Power BI** for data visualization and storytelling  

---

## 🧱 Tech Stack
- **Python**: pandas, matplotlib  
- **SQL**: MySQL (window functions, aggregations)  
- **BI Tool**: Power BI  
- **Version Control**: Git & GitHub  

---

## 📂 Project Structure
MarketMinds-EndToEnd/
│
├─ README.md ← Main project documentation
│
├─ data/
│ ├─ raw/ ← Original raw dataset
│ │ └─ marketing_campaigns.csv
│ └─ processed/ ← Cleaned and feature-engineered data
│ └─ marketing_clean.csv
│
├─ python/
│ ├─ 01_data_cleaning.ipynb ← Data cleaning & feature engineering
│ ├─ 02_eda_analysis.ipynb ← Exploratory data analysis (EDA)
│ └─ requirements.txt ← Python dependencies
│
├─ sql/
│ ├─ schema.sql ← Database & table schema definition
│ └─ analysis_queries.sql ← Analytical SQL queries & insights
│
├─ powerbi/
│ └─ MarketMinds_MarketingAnalytics.pbix
│ ← Interactive Power BI dashboard
│
└─ images/
├─ Campaign Performance.png ← Campaign-level performance analysis
├─ Buyer Composition.png ← Customer segment composition
└─ Purchase Drivers.png ← Key purchase drivers visualization

---

## 🧹 Data Cleaning & Feature Engineering (Python)
- Loaded raw marketing data and standardized column names
- Handled data types and validated numeric fields
- Engineered a new feature `total_spend` by aggregating product-level spending:
  - Wines, Fruits, Meat, Fish, Sweets, and Baked Products
- Saved the cleaned dataset as `marketing_clean.csv` for reuse across tools

📄 Notebook: `python/01_data_cleaning.ipynb`

---

## 🔍 Exploratory Data Analysis (Python)
Key questions explored:
1. **How much do customers spend overall?**  
   - Most customers exhibit low spending, while a small group of high-value customers contributes disproportionately to total revenue.

2. **Does campaign participation influence total spending?**  
   - Earlier campaigns (especially Campaign 5) were more effective at engaging high-value customers.
   - The most recent campaign (Campaign 6) showed broader engagement but lower average spend per customer.

3. **Which product categories drive the most revenue?**  
   - Wine products account for the largest share of total customer spending.

📄 Notebook: `python/02_eda_analysis.ipynb`

---

## 🗄️ Data Loading & Schema Design (SQL)
- A MySQL database (`market_minds`) was created to store the cleaned dataset.
- Table structure was explicitly defined to reflect the cleaned data schema.
- Data was imported using MySQL Workbench’s Table Data Import Wizard.
- A sample SQL loading script (`load_data.sql`) is included to document the ingestion process.

📄 SQL files:
- `sql/schema.sql`
- `sql/load_data.sql`

---

## 📊 Analytical Queries & Insights (SQL)
SQL was used to replicate and validate insights discovered during Python EDA.

### Key analyses include:
- Customer spending summary (min, max, average)
- Average total spend by campaign participation
- Revenue concentration analysis using window functions (`NTILE`)

Notable insight:
- The top 20% of customers account for a disproportionately large share of total revenue, while the bottom 40% contribute minimally — a classic Pareto (80/20) pattern.

📄 Queries: `sql/analysis_queries.sql`

---

## 📈 Data Visualization (Power BI)
- Built an interactive Power BI dashboard to communicate insights clearly to non-technical stakeholders.
- Visuals include:
  - Campaign performance comparison
  - Product category contribution
  - High-value customer segmentation
- SQL and Python insights directly informed dashboard design and storytelling.

---

## ✅ Key Takeaways
- Demonstrated an end-to-end analytics pipeline from raw data to business insights
- Validated findings across multiple tools (Python → SQL → Power BI)
- Highlighted the importance of targeting and retaining high-value customers in marketing strategy

---

## 🔗 Author
**Jennie Jeong**  
Aspiring Data Analyst | Python • SQL • Power BI  
GitHub: https://github.com/orbitjeong


### 🔹 Dashboard Preview
## Campaign Performance
<img width="1560" height="872" alt="image" src="https://github.com/user-attachments/assets/6fcdd178-eea0-46b2-9b19-c8849ff4e09a" />

## Buyer Composition
<img width="3025" height="1698" alt="Buyer Composition" src="https://github.com/user-attachments/assets/9f793aa4-7aae-41c2-a26d-ecdeedf73275" />

## Purchase Drivers
<img width="3026" height="1695" alt="Purchase Drivers" src="https://github.com/user-attachments/assets/f81da2f9-915e-4807-95a8-8eac4b885991" />
