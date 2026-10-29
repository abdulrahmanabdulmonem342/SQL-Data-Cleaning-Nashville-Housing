# 🧹 Data Cleaning in SQL — Nashville Housing Dataset

## 📌 Overview
This project focuses on cleaning and transforming raw housing data using **SQL Server** to make it suitable for analysis. The dataset contained unstructured formatting, null values, duplicate entries, and merged string fields.

---

## 🛠️ Key SQL Techniques Applied
* **Standardizing Date Formats:** Converted datetime formats into clean date structures (`CONVERT` / `CAST`).
* **Populating Missing Data:** Handled null property addresses using self-joins (`ISNULL`).
* **Splitting String Columns:** Divided unformatted address strings into distinct fields (Address, City, State) using `SUBSTRING`, `CHARINDEX`, and `PARSENAME`.
* **Value Standardization:** Replaced inconsistent categorical entries (e.g., changing 'Y' and 'N' to 'Yes' and 'No') using `CASE` statements.
* **Removing Duplicates:** Identified and eliminated duplicate records using `ROW_NUMBER()` and Common Table Expressions (CTEs).
* **Deleting Unused Columns:** Dropped redundant and unformatted columns to optimize schema structure.

---

## 📂 Repository Files
* **SQL Queries:** `Data_Cleaning_Nashville_Housing.sql`
* **Raw Dataset:** `Nashville Housing Data for Data Cleaning.xlsx`

---

## 👤 Author
* **Abdulrahman** — Computer Science Student & Data Analyst
