# 🛒 Super Store Analysis using SQL & Python (Pandas, NumPy, Matplotlib)

_An end-to-end Data Analytics project that analyzes Super Store sales data using SQL for querying and Python for data cleaning, analysis, and visualization._

---

## 📑 Table of Contents

- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#database--sql-analysis">Database & SQL Analysis</a>
- <a href="#python-analysis">Python Analysis</a>
- <a href="#data-cleaning">Data Cleaning</a>
- <a href="#visualizations">Visualizations</a>
- <a href="#key-insights">Key Insights</a>
- <a href="#project-output">Project Output</a>
- <a href="#how-to-run-this-project">How to Run this Project?</a>
- <a href="#results--conclusion">Results & Conclusion</a>
- <a href="#author--contact">Author & Contact</a>

---

<h2><a class="anchor" id="overview"></a>Overview</h2>

This project performs an end-to-end analysis of the **Super Store Sales Dataset** using **MySQL** and **Python**. SQL is used to extract meaningful business insights from the database, while Python libraries such as **Pandas**, **NumPy**, and **Matplotlib** are used for data manipulation, exploratory data analysis (EDA), and visualization.

The objective of this project is to understand sales performance, profitability, customer behavior, and regional trends to support data-driven business decisions.

---

<h2><a class="anchor" id="business-problem"></a>Business Problem</h2>

Retail companies generate large amounts of transactional data every day. Without proper analysis, it becomes difficult to identify profitable products, sales trends, customer purchasing behavior, and regional performance.

This project answers important business questions such as:

- Which category generates the highest sales?
- Which region is the most profitable?
- Which customer segment contributes the most revenue?
- How do discounts affect profit?
- Which products generate high sales but low profit?
- What are the monthly and yearly sales trends?
- How do returned orders impact business performance?

---

<h2><a class="anchor" id="dataset"></a>Dataset</h2>

**Source:** Super Store Sales Dataset

**Files Used:**

- Sales Dataset
- Calendar Dataset

**Key Columns**

- Order ID
- Order Date
- Ship Date
- Customer Name
- Segment
- City
- State
- Region
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit
- Returned

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

- MySQL
- SQL
- Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook
- Git & GitHub

---

<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```text
Super-Store-Analysis-SQL-Python/
│
├── README.md
│
├── data/
│   ├── sales.csv
│   └── calendar.csv
│
├── sql/
│   └── super_store_analysis.sql
│
├── notebooks/
│   └── Super_Store_Analysis.ipynb
│
├── images/
│   ├── monthly_sales.png
│   ├── sales_by_category.png
│   ├── profit_by_region.png
│   └── customer_segment.png
│
├── reports/
│   └── analysis_report.html
│
├── requirements.txt
├── LICENSE
└── .gitignore
```

---

<h2><a class="anchor" id="database--sql-analysis"></a>Database & SQL Analysis</h2>

The dataset was imported into MySQL for structured analysis.

SQL concepts used:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- CASE WHEN
- Aggregate Functions
- INNER JOIN
- Date Functions
- Business Queries

More than **10 business-driven SQL queries** were written to extract actionable insights.

---

<h2><a class="anchor" id="python-analysis"></a>Python Analysis</h2>

Python was used to connect with MySQL using SQLAlchemy.

Analysis included:

- Loading SQL query results into Pandas DataFrames
- Exploratory Data Analysis (EDA)
- Statistical summaries
- Trend analysis
- Data visualization using Matplotlib

---

<h2><a class="anchor" id="data-cleaning"></a>Data Cleaning</h2>

The following preprocessing steps were performed:

- Removed duplicate records
- Converted date columns into datetime format
- Checked missing values
- Corrected data types
- Validated numerical columns
- Cleaned inconsistent values

---

<h2><a class="anchor" id="visualizations"></a>Visualizations</h2>

The project includes the following visualizations:

- Monthly Sales Trend
- Sales by Category
- Profit by Region
- Customer Segment Analysis
- Top Performing Products
- Sales vs Profit Comparison

---

<h2><a class="anchor" id="key-insights"></a>Key Insights</h2>

- Technology category generated the highest sales revenue.
- West region achieved the highest overall sales.
- Consumer segment contributed the largest share of total sales.
- Heavy discounts reduced profitability for several products.
- A small number of products generated high revenue but low profit.
- Sales showed clear seasonal trends throughout the year.
- Returned orders negatively impacted overall business profit.

---

<h2><a class="anchor" id="project-output"></a>Project Output</h2>

The project delivers:

- SQL-based Business Analysis
- Python-based Data Analysis
- Data Cleaning using Pandas
- Business Insights
- Statistical Analysis
- Data Visualizations
- HTML Analysis Report

---

<h2><a class="anchor" id="how-to-run-this-project"></a>How to Run this Project?</h2>

### Clone Repository

```bash
git clone https://github.com/yourusername/Super-Store-Analysis-SQL-Python.git
```

### Install Required Libraries

```bash
pip install -r requirements.txt
```

### Create MySQL Database

```sql
CREATE DATABASE super_store_analysis;
```

### Import Dataset

Import the Sales and Calendar datasets into MySQL.

### Run Jupyter Notebook

Open:

```
Super_Store_Analysis.ipynb
```

Run all notebook cells to reproduce the complete analysis.

---

<h2><a class="anchor" id="results--conclusion"></a>Results & Conclusion</h2>

This project demonstrates how SQL and Python can be integrated to perform complete business data analysis.

The analysis helps identify sales trends, profitable categories, regional performance, customer behavior, and the impact of discounts on profitability. The project showcases practical data analytics skills including SQL querying, data cleaning, exploratory data analysis, visualization, and business insight generation.

---

<h2><a class="anchor" id="future-work"></a>Future Work</h2>

Future enhancements include:

- Develop an interactive web application using Streamlit
- Perform sales forecasting using Machine Learning
- Automate report generation
- Connect with a live database for real-time analysis
- Expand the project with advanced statistical analysis

---

<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

### 👨‍💻 Intezar Kabir

**Aspiring Data Analyst | SQL | Python | Power BI | Excel**

📧 Email: mdintezarul51052@gmail.com

🔗 LinkedIn:https://www.linkedin.com/in/intezar-kabir-731a31362?

💻 GitHub: https://github.com/IntezarKabir/Super-Store-Analysis-SQL-Python