select * from employees; 
select * from salary ;
select * from employee_salary;
select * from roles;
select * from roles_employee; 


--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name,monthly_salary from employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id ; 

--2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name,monthly_salary from employees join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000; 

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name,monthly_salary from employees right join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name,monthly_salary from employees right join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name from employees left join employee_salary on employees.id = employee_salary.employee_id
where salary_id is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

--8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

--9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

--11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

--12. ������� ����� � �������� Junior ������������

select employee_name,role_name,monthly_salary  from employees join employee_salary on employees.id = employee_salary.employee_id
join salary on  employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������

select employee_name,role_name,monthly_salary  from employees join employee_salary on employees.id = employee_salary.employee_id
join salary on  employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������

select employee_name,role_name,monthly_salary  from employees join employee_salary on employees.id = employee_salary.employee_id
join salary on  employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';

--15. ������� �������� Java �������������

select role_name,monthly_salary from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
left join roles on roles_employee.role_id  = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

--16. ������� �������� Python �������������

select role_name,monthly_salary  from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%';


--17. ������� ����� � �������� Junior Python �������������

select employee_name,role_name,monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������

select employee_name,role_name,monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������

select employee_name,role_name,monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

--20. ������� �������� Junior QA ���������

select role_name,monthly_salary from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%' and role_name like '%Junior%';

--21. ������� ������� �������� ���� Junior ������������

select avg(monthly_salary) as avg_salary_junior from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--22. ������� ����� ������� JS �������������

select sum(monthly_salary) as sum_salary_js from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������

select min(monthly_salary) as min_salary_QA from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%';

--24. ������� ������������ �� QA ���������

select max(monthly_salary) as max_salary_QA from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%';

--25. ������� ���������� QA ���������

select count (role_name) as count_QA from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like'%QA%';

--26. ������� ���������� Middle ������������.

select count (role_name) as count_middle from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like'%Middle%';

--27. ������� ���������� �������������

select count (role_name) as count_developer from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like'%developer%';

--28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary) as sum_salary_developer from employee_salary join roles_employee on employee_salary.employee_id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name,role_name,monthly_salary  from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
order by employee_name;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name,role_name,monthly_salary  from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by employee_name;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name,role_name,monthly_salary  from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary > 2300
order by employee_name;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name,role_name,monthly_salary  from employees join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in(1100,1500,2000)
order by employee_name;
