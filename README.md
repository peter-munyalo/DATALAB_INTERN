# 📊 Data Analytics Internship: Week 1-2 Project

## Data Cleaning & Exploratory Data Analysis (EDA)

---

## 📌 Project Overview

This repository contains my completed tasks for **Week 1-2** of the **AnalystLab Africa Data Analytics Internship Program**. The project focuses on performing comprehensive data cleaning and exploratory data analysis on two real-world datasets:

1. **Netflix Movies & TV Shows Dataset**
2. **E-commerce Transactions Dataset**

The primary objective was to transform messy, raw data into structured, analysis-ready datasets while uncovering meaningful patterns and business insights.

---

## 🎯 Project Objectives

- Develop data cleaning and validation skills
- Handle missing values, duplicates, and inconsistencies
- Standardize data formats and create new features
- Perform exploratory data analysis to identify patterns
- Create professional data visualizations
- Generate actionable business insights

---

## 📁 Datasets Used

### 1. Netflix Movies & TV Shows Dataset
- **Source**: [Kaggle - Netflix Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Records**: 8,807
- **Features**: 12 (show_id, type, title, director, cast, country, date_added, release_year, rating, duration, listed_in, description)

### 2. E-commerce Transactions Dataset
- **Source**: [Kaggle - Online Retail](https://www.kaggle.com/datasets/vijayuv/onlineretail)
- **Records**: 541,909
- **Features**: 8 (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python** | Programming language |
| **Pandas** | Data manipulation and cleaning |
| **NumPy** | Numerical operations |
| **Matplotlib** | Data visualization |
| **Seaborn** | Statistical visualizations |
| **Jupyter Notebook** | Interactive development environment |
| **VS Code** | Code editor |

---

## 📋 Task Breakdown

### Task 1: Dataset Understanding
- Loaded datasets and examined structure
- Identified data types and feature categories
- Checked for unique identifiers
- Documented dataset descriptions

### Task 2: Data Cleaning

| Issue Type | Netflix Dataset | E-commerce Dataset |
|------------|-----------------|-------------------|
| **Missing Values** | Filled with "Unknown" | Removed 135,080 rows with missing CustomerID |
| **Duplicates** | 0 duplicates removed | 5,192 duplicates removed |
| **Invalid Data** | Standardized duration format | Removed negative quantities/prices |
| **Standardization** | Date conversion, text formatting | Date components, total amount calculation |

**Key Cleaning Steps:**

✅ **Netflix:**
- Filled missing director, cast, country with "Unknown"
- Filled missing rating with "Not Rated"
- Converted date_added to datetime format
- Split duration into numeric and unit columns
- Standardized text to consistent case

✅ **E-commerce:**
- Removed rows with missing CustomerID
- Removed negative Quantity and UnitPrice values
- Removed invalid StockCodes starting with 'A'
- Converted InvoiceDate to datetime
- Created InvoiceYear, InvoiceMonth, InvoiceDay features
- Calculated TotalAmount (Quantity × UnitPrice)
- Standardized text to uppercase

### Task 3: Exploratory Data Analysis

**Netflix Dataset Findings:**
- Movies dominate (69.6%) vs TV Shows (30.4%)
- Content addition peaked in 2019 (1,999 titles)
- US produces 32% of all content
- TV-MA is most common rating (36.4%)
- International Movies is top genre

**E-commerce Dataset Findings:**
- UK accounts for 82% of total revenue ($7.28M)
- November 2011 had peak sales ($1.16M)
- "PAPER CRAFT, LITTLE BIRDIE" is top product
- Average order value: $68.38
- Top 10% customers drive majority of revenue

### Task 4: Data Visualization

Created **10+ professional visualizations** including:

| Chart Type | Netflix | E-commerce |
|------------|---------|------------|
| Pie Chart | Movies vs TV Shows | Customer Segmentation |
| Bar Chart | Top Countries, Ratings | Top Products, Top Countries |
| Line Chart | Content Added by Year | Monthly Sales Trend |
| Histogram | Release Year Distribution | Order Value Distribution |
| Horizontal Bar | Top Genres | Top Products by Revenue/Quantity |

### Task 5: Key Insights

**Netflix Insights:**
1. **Content Strategy**: Netflix prioritizes movies over TV shows (69.6% vs 30.4%)
2. **Growth Pattern**: Aggressive expansion peaked in 2019 with 1,999 titles
3. **Market Focus**: US dominates production (32%), with room for international growth
4. **Target Audience**: Mature content (TV-MA/TV-14) represents 60.9% of library
5. **Genre Strategy**: International content and Dramas are most common

**E-commerce Insights:**
1. **Market Dependency**: UK accounts for 82% of total revenue
2. **Seasonal Trends**: Strong holiday peak in November ($1.16M)
3. **Product Performance**: Paper crafts generate highest revenue
4. **Customer Concentration**: Top 10% of customers are key drivers
5. **Order Value**: Average of $68.38, potential for upselling

---

## 📊 Results Summary

### Dataset Cleaning Summary

| Metric | Netflix | E-commerce |
|--------|---------|------------|
| Original Records | 8,807 | 541,909 |
| Cleaned Records | 8,807 | 392,692 |
| Rows Removed | 0 | 149,217 |
| Features (Original) | 12 | 8 |
| Features (Engineered) | +5 | +5 |
| Total Revenue | - | $8.89 Million |

---

## 💡 Key Skills Demonstrated

- ✅ Data Cleaning & Preprocessing
- ✅ Exploratory Data Analysis (EDA)
- ✅ Data Visualization (Matplotlib, Seaborn)
- ✅ Python Programming (Pandas, NumPy)
- ✅ Feature Engineering
- ✅ Business Insights Generation
- ✅ Git & GitHub
- ✅ Documentation & Reporting

---

## 📁 Project Structure
