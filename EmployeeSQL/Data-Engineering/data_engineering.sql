CREATE TABLE Titles (
    title_id varchar NOT NULL,
    title varchar NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_no varchar NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id),
	PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
    emp_no varchar NOT NULL,
    salary int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

CREATE TABLE Departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Department_Manager (
    dept_no varchar NOT NULL,
    emp_no varchar NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Department_Employee (
    emp_no varchar NOT NULL,
    dept_no varchar NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);