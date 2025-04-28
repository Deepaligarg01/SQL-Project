# 📚 University Database System (SQL Project)

## 📁 Project Overview
This project is a comprehensive SQL-based database system designed to manage university operations, including student records, professor details, course offerings, and enrollments. It features a robust schema, sample data, and a variety of queries to demonstrate efficient data management and retrieval for academic institutions.

## 🗂 Database Description
- **Total Records**:
  - Students: 50
  - Professors: 50
  - Courses: 50
  - Enrollments: 50
- **Key Tables**:
  - **Students**: Stores student ID, first name, last name, and enrollment date.
  - **Professors**: Stores professor ID, first name, last name, and department.
  - **Courses**: Stores course ID, course name, professor ID, and credits.
  - **Enrollments**: Stores enrollment ID, student ID, course ID, enrollment date, and grade.

## 📈 Analysis Performed
- **Basic Operations**:
  - Retrieve all students, filter by enrollment year, and update professor departments.
  - Add new students and remove enrollments.
- **Intermediate Operations**:
  - Join tables to list students with their courses and professors with their courses.
  - Calculate average grades per professor and categorize course credits.
  - Analyze student counts by enrollment date and departments with multiple professors.
- **Sample Queries**:
  - Students enrolled in Computer Science courses.
  - Students with A or A- grades in 2024.

## 🎯 Key Insights
- Demonstrates efficient management of relational data with foreign key constraints.
- Provides insights into student performance, course distribution, and professor workloads.
- Supports scalable querying for academic reporting and analysis.

## 🛠 Tools Used
- SQL (compatible with MySQL, PostgreSQL, SQLite, etc.)
  - Schema Creation
  - Data Insertion
  - Query Development
  - Data Analysis

## 🧠 Skills Showcased
- Database Design
- SQL Query Writing
- Relational Data Management
- Data Analysis and Reporting

## 📎 File Structure
```
├── SQL_PROJECT.sql
    ├── Schema Creation: Table definitions
    ├── Data Insertion: Sample data for all tables
    ├── Queries: Basic and intermediate operations
```

## 🚀 Future Improvements
- Add stored procedures for automated tasks (e.g., student enrollment).
- Implement triggers to maintain data integrity (e.g., update enrollment counts).
- Integrate with a front-end application for user interaction.
- Expand schema to include additional entities like departments or classrooms.

## 🖥 Setup Instructions
1. **Prerequisites**: Install a SQL-compatible DBMS (e.g., MySQL, PostgreSQL).
2. **Installation**:
   - Download or clone the project repository.
   - Open `SQL_PROJECT.sql` in a SQL editor.
   - Execute the script to create tables, insert data, and run queries.
3. **Running Queries**:
   - Execute the schema and data insertion sections first.
   - Run individual queries to explore functionality.

## 📜 License
This project is licensed under the MIT License.

## 📬 Contact
For questions or feedback, please contact Deepali Garg at gargdeepali465@gmail.com

---
*Efficient SQL-based solution for university data management.*
