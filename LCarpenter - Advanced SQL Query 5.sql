# You will need two queries for this one. It can be done in one but it will require too much copying.
# Using the previous query, create a view (this will help you from copy pasting it) and display the ratio of women to men for each department. Display department and ratio rounded in 2 decimals points.
# For the view use: CREATE OR REPLACE VIEW
# Otherwise scripts will fail if a view exists

CREATE OR REPLACE VIEW gender_ratio AS SELECT dept_name, gender, COUNT(gender) AS people FROM employees, dept_emp, departments WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no GROUP BY dept_name, gender;

SELECT dept_name, ROUND(MIN(people) / MAX(people), 2) as ratio FROM gender_ratio GROUP BY dept_name;
