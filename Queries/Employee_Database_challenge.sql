
-- PART 1
-- retirement titles; RETIRING POOL

select 
    e.emp_no, e.first_name, e.last_name,
	 t.title, t.from_date, t.to_date	 
into retirement_titles
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31' )
order by emp_no asc;

-- distinct on, unique_titles.csv; RETIRING POOL W/MOST RECENT POSITION 
-- TO ELIMIATE OLD TITLES

select distinct on (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
into unique_titles
from retirement_titles as rt
order by rt.emp_no asc, to_date desc;

-- retiring_titles; GROUPED ACCORDING TO TITLE (LOOK AT SENIORS)
select count(ut.title),ut.title
into retiring_titles
from unique_titles ut
group by ut.title
order by count(ut.title) desc;

-- PART 2 mentorship
select distinct on (e.emp_no)
	e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
into mentorship_eligibility
from employees e
inner join dept_emp de on (e.emp_no = de.emp_no)
inner join titles t on (de.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') and de.to_date = '9999-01-01'
order by e.emp_no asc;

-- ADDTL QUERY; RETIRING CURRENT EMPLOYEES; retiring_current_emp
select distinct on (e.emp_no)
	e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
into retiring_current_emp
from employees e
inner join dept_emp de on (e.emp_no = de.emp_no)
inner join titles t on (de.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') and de.to_date = '9999-01-01'
order by e.emp_no asc;

-- ADDTL QUERY; mentorship_eligibility GROUPED ACCORDING TO TITLE (LOOK AT SENIORS)
select count(title), title
from mentorship_eligibility
into mentorship_titles
group by title
order by count(title) desc;