# Display the first name and last name as well as department name of all current department managers. SORT by department name, last name, first name
SELECT first_name, last_name, dept_name FROM departments, employees NATURAL JOIN dept_manager WHERE dept_manager.to_date = "9999-01-01" AND dept_manager.dept_no = departments.dept_no ORDER BY dept_name, last_name, first_name DESC;
