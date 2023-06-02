-- Create Table "Titles" To Store Data From titles.csv
CREATE TABLE Titles (
    title_id varchar(5) NOT NULL,
    title varchar(18) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create Table "Employees" To Store Data From employees.csv
CREATE TABLE Employees (
    emp_no int NOT NULL,
    emp_title_id varchar(5) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(14) NOT NULL,
    last_name varchar(16) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id),
	PRIMARY KEY (emp_no)
);

-- Create Table "Salaries" To Store Data From salaries.csv
CREATE TABLE Salaries (
    emp_no int NOT NULL,
    salary int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

-- Create Table "Departments" To Store Data From departments.csv
CREATE TABLE Departments (
    dept_no varchar(4) NOT NULL,
    dept_name varchar(18) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create Table "Department_Manager" To Store Data From dept_manager.csv
CREATE TABLE Department_Manager (
    dept_no varchar(4) NOT NULL,
    emp_no int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Create Table "Department_Employee" To Store Data From dept_emp.csv
CREATE TABLE Department_Employee (
    emp_no int NOT NULL,
    dept_no varchar(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);