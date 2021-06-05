create table departments(
	primary key (dept_number),
	dept_number varchar(30),
	dept_name varchar(30)
);

select * from departments


create table department_employees (
	emp_num int not null,
	dept_num varchar(30),
	primary key (emp_num, dept_num)
);

select * from department_employees


create table department_managers(
	dept_num varchar(30),
	emp_num int not null,
	primary key (dept_num, emp_num)
);

select * from department_managers


create table employees(
	emp_num int not null,
	emp_title varchar(30),
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(2) not null,
	date_hired date not null,
	primary key (emp_num)
);

select * from employees


create table salaries(
	emp_num int not null,
	salaries int not null,
	primary key (emp_num)
);

select * from salaries


create table titles(
	title_id varchar(30),
	title varchar(30),
	primary key (title_id)
);

select * from titles