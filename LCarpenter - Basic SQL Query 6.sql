# Display the age of the oldest employee (as an int) in absolute years (assuming they are still working there)
SELECT ABS(YEAR(CURDATE()) - YEAR(birth_date)) + 1 FROM employees ORDER BY birth_date asc LIMIT 1;
