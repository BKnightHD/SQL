# SQL Fundamentals - Datacamp Course Repository

This repository contains my coursework, notes, and projects from the Datacamp SQL Fundamentals track. The materials cover essential SQL concepts from basic queries to advanced database design principles.

## Course Overview

This repository is organized by course modules, progressing from foundational SQL syntax to advanced topics in PostgreSQL and database architecture.

## Unit 1: Introduction to SQL

### Meet Databases & SQL
Understand what databases are, how they’re structured using tables, and how SQL is used to work with data.

### Write Your First SQL
Write your first SQL queries to select, limit, sort, and retrieve top/bottom records from database tables.

### Complete Your SQL Foundation
Build a solid SQL foundation by handling unique values, renaming columns, understanding SQL flavors, and learning how databases work in practice.

---

## Unit 2: Intermediate SQL

### Data Aggregation

#### Summary Values
Summarize data by calculating key statistics such as totals, averages, and counts to extract meaningful insights from raw data.

#### One Grouping Column
Break down summary statistics by categories to compare metrics across groups and uncover patterns.

#### Multiple Grouping Columns
Analyze data across multiple dimensions simultaneously to discover more nuanced patterns.

---

### Data Transformation

#### Basic Transformations
Create new columns by combining and calculating values from existing data to derive ratios and other derived metrics.

#### Complex Transformations
Handle multi-step calculations and compute percentages of totals to build metrics that rely on intermediate results.

---

### Data Filtering

#### Basic Filtering
Extract specific rows based on conditions to focus analysis on relevant subsets, including handling missing values and text patterns.

#### Multiple Conditions
Filter data using multiple criteria at once by combining conditions with AND / OR logic.

#### Complex Filtering
Simplify complex filtering by breaking conditions into separate columns and extracting inverse filter results for clearer, more verifiable analysis.

---

### Conditional Operations

#### Conditional Transformation
Apply different calculations based on specific conditions to standardize values, classify data, and handle varied scenarios.

#### Conditional Aggregation
Calculate summaries that include only values meeting specific criteria, such as computing the “average of delayed flights only” within each group.


---
### 3. Joining Data in SQL
Combining data from multiple tables:
- Introduction to Inner Joins
- Outer Joins, Cross Joins and Self Joins
- Set Theory for SQL Joins
- Subqueries

### 4. Data Manipulation in SQL
Working with data modification:
- We'll take the CASE
- Short and Simple Subqueries
- Correlated Queries, Nested Queries, and Common Table Expressions

### 5. PostgreSQL Summary Stats and Window Functions
Advanced analytical queries:
- Introduction to window functions
- Fetching, ranking, and paging
- Aggregate window functions and frames
- Beyond window functions and frames

### 6. Functions for Manipulating Data in PostgreSQL
PostgreSQL-specific data manipulation:
- Overview of Common Data Types
- Working with DATE/TIME Functions and Operations
- Parsing and Manipulating Text
- Full-text Search and PostgreSQL Extensions

### 7. Database Design
Principles of database architecture:
- Processing, Storing, and Organizing Data
- Database Schemas and Normalization
- Database Views
- Database Management

## Repository Structure

```
sql-fundamentals/
├── 01-introduction-to-sql/
├── 02-intermediate-sql/
├── 03-joining-data/
├── 04-data-manipulation/
├── 05-summary-stats-window-functions/
├── 06-data-manipulation-functions/
├── 07-database-design/
└── README.md
```

## Technologies

- **SQL**: Standard Query Language
- **PostgreSQL**: Primary database system used in later modules
- **Datacamp**: Learning platform

## Learning Objectives

By completing this course track, I aim to:
- Write efficient and optimized SQL queries
- Understand relational database concepts
- Master PostgreSQL-specific features
- Design normalized database schemas
- Apply analytical functions for data analysis

## Progress

- [x] Introduction to SQL
- [ ] Intermediate SQL
- [ ] Joining Data in SQL
- [ ] Data Manipulation in SQL
- [ ] PostgreSQL Summary Stats and Window Functions
- [ ] Functions for Manipulating Data in PostgreSQL
- [ ] Database Design

## Resources

- [Datacamp SQL Fundamentals Track](https://www.datacamp.com/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- [SQL Style Guide](https://www.sqlstyle.guide/)

## Notes

Each module directory contains:
- SQL scripts with queries and examples
- Practice exercises and solutions
- Personal notes and insights
- Project files (where applicable)

## License

This repository is for educational purposes. Course materials are property of Datacamp.

---

**Last Updated**: February 2026
