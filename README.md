# Healthcare Dataset Analysis in SQL

## 📌 Project Overview
The **Healthcare Dataset Analysis in SQL** project is designed to demonstrate real-world SQL query writing and database management using healthcare-related data. This repository focuses on **patients, appointments, billing, prescriptions, and doctors** to analyze and retrieve useful insights about hospital operations.

The project includes SQL queries to:
- Manage and retrieve appointment information.
- Track billing and payment statuses.
- Identify trends in healthcare data (e.g., common appointment reasons).
- Generate key reports for doctors, patients, and financial data.

---

# Screenshot 1 
![Healthcare Dataset Screenshot](https://github.com/Jayesh-dev-glitch/Healthcare-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20124909.png)

# Screenshot 2
![Healthcare Dataset Screenshot 2](https://github.com/Jayesh-dev-glitch/Healthcare-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20124925.png)

# Screenshot 3
![Healthcare Dataset Screenshot 3](https://github.com/Jayesh-dev-glitch/Healthcare-Dataset-Analysis-in-SQL/blob/main/Screenshot%202025-07-21%20124951.png)


## ⚙️ Database Schema

### **Database Name:** `healthcare`

The database consists of **5 tables**:

1. **`patients`**  
   - Contains patient details such as ID, name, and personal information.
2. **`doctors`**  
   - Contains doctor details such as ID, name, and specialty.
3. **`appointments`**  
   - Stores appointment details such as appointment ID, patient ID, doctor ID, date, and reason.
4. **`billing`**  
   - Stores billing and payment status for appointments.
5. **`prescriptions`**  
   - Contains prescription details for specific appointments.

---

📊 Key Insights You Can Derive
Revenue Analysis: Track billed and paid amounts.

Doctor Performance: Check which doctors have the most appointments.

Patient Trends: Understand the most common appointment reasons.

Prescription Trends: Find which medications are prescribed most often.

Time-based Analysis: Monitor appointments within the last 30 days.

🚀 How to Use This Project
Create the Database:

sql
Copy
Edit
CREATE DATABASE healthcare;
USE healthcare;
Create Tables & Insert Data:

Define your patients, doctors, appointments, billing, and prescriptions tables.

Insert sample data.

Run Queries:

Copy and run the SQL queries from this repository in MySQL Workbench or any SQL client.

Analyze Results:

Explore the output of queries to get insights about healthcare operations.


🛠️ Tools & Technologies
Database: MySQL

SQL Concepts Used: JOIN, GROUP BY, ORDER BY, Aggregations, Subqueries, Date Functions, and String Functions

IDE: MySQL Workbench / DBeaver
