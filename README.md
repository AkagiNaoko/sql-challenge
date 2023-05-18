# Employee Management SQL Project
## Project Overview
This project involves creating and managing an SQL database for employee management. It includes 6 tables designed to store various aspects of employee data. These tables are created and queried using two SQL scripts located in the EmployeeSQL folder. 
## File Structure
The following key files are included in the EmployeeSQL directory: 

schema.sql: This file contains the SQL commands for creating the six tables in the database. The commands include the creation of the tables and the definition of the fields in each table. 

queries.sql: This file contains various SQL commands to query the database. It includes examples of how to select, insert, update, and delete records in the tables. 

ERD.png: This image file provides a graphical representation of the Entity Relationship Diagram (ERD) for the database. It shows how the six tables are related to each other. 

## Database Structure
The database consists of six tables: 

Employees: This table contains employee details like employee ID, name, date of birth, and gender. 

Departments: This table contains the list of departments in the company. 

Salaries: This table includes information about employee salaries. 

Titles: This table holds data about the various titles or job positions in the company. 

Dept_Emp: This table establishes the relationship between the Employees and Departments tables, specifying which department each employee belongs to. 

Dept_Manager: This table records which employees are managers in each department. 

The relationships between these tables are detailed in the ERD. 

## Getting Started
Clone this repository to your local machine. 

Open the schema.sql file in your favorite SQL client, and execute it to create the database and its tables. Insert the csv data following the table number. 

Next, open the queries.sql file and execute the queries to interact with the database. 

Refer to the ERD.png image for a visual representation of the database schema and to understand the relationships between the tables. 
