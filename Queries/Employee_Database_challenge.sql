-- Deliverable 1. Number of retiring employees by title.
SELECT e.emp_no, e.first_name, e.last_name, t.titles, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.titles
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date='9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- Employee count by department number
SELECT COUNT(ut.emp_no), ut.titles DESC
INTO retiring_tiles
FROM unique_titles as ut
GROUP BY ut.titles
ORDER BY count(ut.emp_no) DESC;

--Determine who is eligible for a mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name, e.last_name, de.from_date, de.to_date, t.titles
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no