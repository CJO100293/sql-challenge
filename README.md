# sql-challenge
## Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

- The data analysis portion aims to gather the following information from the tables within the SQL database using queries:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

- For each of the required queries in the data analysis section, ive exported the results into a CSV file located within "/EmployeeSQL/Query-Outputs-CSV".
- The .sql file for my table schemata is located within "/EmployeeSQL/Data-Engineering/data_engineering.sql"
- The .sql file for my queries is located within "/EmployeeSQL/Data-Analysis/queries.sql"
- The image file for my ERD is located withing "/EmployeeSQL/Data-Modeling/ERD.png"

## Sources
### Data Modeling Section

- I used https://www.quickdatabasediagrams.com/ to create the Entity Relationship Diagram (ERD). This section was worked on with some help from Steve Bennett so if our end results look similar then that is why.

### Data Engineering Section

- In the "table_schemata.sql" file located within "/EmployeeSQL/Data-Engineering/" lines 4, 15-16, 22-23, 29, 35-37, and 43-45 were worked on in collaboration with Tyler White along with the help of AskBCS. The rest of the file's code was generated from https://www.quickdatabasediagrams.com/ when i exported my ERD diagram as a postgresql database. The original code that was generated is located at "/EmployeeSQL/Data-Modeling/ERD.sql". In the original code, each table name and column name listed was wrapped around double quotations and AskBCS instructed us to remove the quotations. The original code also had CONSTRAINT's defined with the primary keys being listed. AskBCS instructed us remove this and replace it with what was in lines 4, 15-16, 22-23, 29, 35-37, and 43-45 of the "ERD-sql-challenge.sql" file. AskBCS also had us remove lines 59-75 as they were not needed.

- The "EmployeeSQL_DB.backup" file located within "/EmployeeSQL/Data-Engineering/" is a full database backup file that can be used to completely recreate the SQL database that i made in PGAdmin and includes the imported data from the CSV files located within "/EmployeeSQL/Resources/".

### Data Analysis Section

- In the "List the first name, last name, and hire date for the employees who were hired in 1986" portion, the basis for code used to query all required data for employees hired in 1986 was found from user Chris on Apr 27, 2013 at 13:46 at https://stackoverflow.com/questions/10170544/getting-results-between-two-dates-in-postgresql