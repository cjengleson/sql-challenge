-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_num,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salaries

from employees
left join salaries
on employees.emp_num = salaries.emp_num
order by emp_num;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select * from employees
where date_part('year', date_hired) = 1986
order by emp_num;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select department_managers.dept_num,
departments.dept_name,
department_managers.emp_num,
employees.last_name,
employees.first_name

from department_managers
left join departments
on department_managers.dept_num = departments.dept_number
left join employees
on department_managers.emp_num = employees.emp_num
order by emp_num;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_num,
employees.last_name,
employees.first_name,
departments.dept_name

from employees
inner join department_employees on employees.emp_num = department_employees.emp_num
inner join departments on departments.dept_number = department_employees.dept_num
order by emp_num;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules'
and last_name
like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_num,
employees.last_name,
employees.first_name,
departments.dept_name

from employees
left join department_employees
on employees.emp_num = department_employees.emp_num
inner join departments
on departments.dept_number = department_employees.dept_num
where departments.dept_name = 'Sales'
order by emp_num;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_num,
employees.last_name,
employees.first_name,
departments.dept_name

from employees
left join department_employees
on employees.emp_num = department_employees.emp_num
inner join departments
on departments.dept_number = department_employees.dept_num
where departments.dept_name 
in ('Sales', 'Development')
order by emp_num;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,
count(*) as freq_count
from employees
group by last_name
order by freq_count desc;
