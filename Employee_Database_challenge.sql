-- Deliverable 1.1
-- retirement_titles table creation
SELECT
	e.emp_no,
    e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date

INTO retirement_titles

FROM employees as e

INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

ORDER BY e.emp_no ASC;


-- Deliverable 1.2
-- Use Dictinct with Orderby to remove duplicate rows
-- unique_titles table creation (also filters for current employees -> to_date = '9999-01-01')
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
    e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date

INTO unique_titles

FROM employees as e

INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (t.to_date = '9999-01-01')

ORDER BY e.emp_no ASC, t.to_date DESC;


-- Deliverable 1.3
-- retiring_titles table creation
-- Count of retiring employees by title
SELECT COUNT(emp_no),
	title

INTO retiring_titles

FROM unique_titles

GROUP BY title

ORDER BY COUNT(emp_no) DESC;
