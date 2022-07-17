# Display the first name, last name and rounded years worked of all employees sorted in a desceding order based on the rounded years
SELECT first_name, last_name, ROUND(YEAR(CURDATE()) - YEAR(hire_date)) from employees ORDER BY ROUND(YEAR(CURDATE()) - YEAR(hire_date)) desc;
