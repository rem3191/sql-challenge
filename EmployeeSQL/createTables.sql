drop table titles;

create table titles(
	title_id varchar,
	title varchar,
	PRIMARY KEY (title_id)
	);

drop table employees;

create table employees(
	emp_no int,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	FOREIGN KEY (emp_title_id) references titles(title_id),
	PRIMARY KEY (emp_no)
	);
	
drop table departments;

create table departments(
	dept_no varchar,
	dept_name varchar,
	PRIMARY KEY (dept_no)
);

drop table dept_manager;

create table dept_manager(
	dept_no varchar,
	emp_no int,
	FOREIGN KEY (emp_no) references employees (emp_no),
	FOREIGN KEY (dept_no) references departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

drop table dept_emp;

create table dept_emp(
	emp_no int,
	dept_no varchar,
	FOREIGN KEY (emp_no) references employees (emp_no),
	FOREIGN KEY (dept_no) references departments (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

drop table salaries;

create table salaries(
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) references employees (emp_no),
	PRIMARY KEY (emp_no)
	);





