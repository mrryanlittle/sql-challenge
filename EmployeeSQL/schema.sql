CREATE TABLE Departments (
	id SERIAL,
    dept_no VARCHAR NOT NULL,
	dept_names VARCHAR (30) NOT NULL,
	PRIMARY KEY (id)
);

SELECT * FROM Departments

CREATE TABLE Employees (
	id SERIAL,
	emp_no INTEGER NOT NULL,
	emp_title VARCHAR (30) NOT NULL,
	birth_date VARCHAR (30) NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (15) NOT NULL,
	hire_date VARCHAR (30) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (emp_no) REFERENCES Departments(id)
);

SELECT * FROM  Employees

CREATE TABLE Department_Manager (
	id SERIAL,
	dept_no VARCHAR (30) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (emp_no) REFERENCES Employees(id)
);

SELECT * FROM  Department_Manager

CREATE TABLE Department_Employees (
	id SERIAL,
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (30) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_no) REFERENCES Department_Manager (id)
);

SELECT * FROM Department_Employees

CREATE TABLE Titles (
	id SERIAL,
	title_id INTEGER NOT NULL,
	title VARCHAR (30) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (title) REFERENCES Department_Employees(emp_no)
);

SELECT * FROM Titles

CREATE TABLE Salaries (
	id SERIAL,
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (salary) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries