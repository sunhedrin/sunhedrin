#  Which employee got the largest salary increase since they started working in the company? (display emp_no, salary increase in percentage rounded in 2 decimal places, e.g., 100%)
SELECT distinct emp_no, (ROUND((max(salary) / min(salary) * 100.0), 2) - 100) AS bonus FROM salaries GROUP BY emp_no ORDER BY bonus desc LIMIT 1;
