-- How many people work in the Sales department?

select count(e.id) 
from employee e 
join department d
on d.id = e.department
where dept_name = 'Sales';

-- List names of all employees assigned to the 'Plan Christmas Party' project

select emp_name, project_name
from employee e2
join employee_project ep 
on ep.emp_id = e2.id
join project p2 
on p2.id = ep.project_id
where project_name = 'Plan christmas party';

-- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.

select emp_name, project_name, dept_name
from employee e2
join employee_project ep 
on ep.emp_id = e2.id
join project p2 
on p2.id = ep.project_id
join department d 
on d.id = e2.department
where project_name = 'Watch paint dry'
and dept_name = 'Warehouse';

-- Which projects are the Sales department employees assigned to?

select emp_name, project_name, dept_name
from employee e2
join employee_project ep 
on ep.emp_id = e2.id
join project p2 
on p2.id = ep.project_id
join department d 
on d.id = e2.department
where dept_name = 'Sales';

-- List only the managers that are assigned to the 'Watch paint dry' project.

select emp_name, project_name, dept_name
from employee e2
join employee_project ep 
on ep.emp_id = e2.id
join project p2 
on p2.id = ep.project_id
join department d 
on d.id = e2.department
where dept_name = 'Sales'
and d.manager = e2.id;
