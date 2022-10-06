--Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees; 

insert into employees (employee_name)
values ('Ivan'),('Petr'),('Anna'),('Dima'),('Alla'),('Maxim'),('Danila'),('Nikita'),('Milana'),('Inna'),
		('Irina'),('Oleg'),('Olga'),('Misha'),('Mark'),('Svetlana'),('Jane'),('Vova'),('Gleb'),('Artem'),
		('Masha'),('Elena'),('Vasya'),('George'),('Alex'),('Slon'),('Slava'),('Alena'),('Oxana'),('Ilia'),
		('Lyuda'),('Fedr'),('Angel'),('Denis'),('Bogdan'),('Margo'),('Natali'),('Galina'),('Pam'),('Alina'),
		('Liza'),('Kim'),('Morgan'),('Jack'),('Will'),('Kate'),('Andrey'),('Klarck'),('Most'),('Nikolay'),
		('Philip'),('Lola'),('Kirill'),('Glam'),('Victoria'),('Damiano'),('Itan'),('Ikar'),('Good'),('Muha'),
		('Kamilla'),('Tom'),('Yan'),('Mary'),('Jury'),('Monika'),('Bill'),('Grom'),('Ami'),('Homa');

--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

create table salary(	
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
values (1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),
		(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);


--Создать таблицу employee_salary
--id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_id,salary_id)
values (3,7),(1,4),(5,9),(40,13),(23,4),(11,2),(52,10),(15,13),(26,4),(16,1),
		(33,7),(10,4),(55,9),(4,3),(2,14),(22,2),(53,1),(17,12),(6,8),(36,5),
		(38,6),(41,14),(65,11),(45,3),(20,8),(51,12),(62,16),(35,15),(29,9),(66,1),
		(83,3),(81,5),(74,10),(94,2),(99,14),(101,2),(72,10),(85,13),(86,4),(76,1);

--drop table employee_salary; 

select * from employee_salary; 

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles;

insert into roles(role_name)
values ('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),
('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'),('Middle Manual QA engineer'),('Senior Manual QA engineer'),
('Project Manager'),('Designer'),('HR'),('CEO'),('Sales manager'),
('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');

--drop table roles;


--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key,
	employee_id int unique not null, 
	role_id int not null,
	foreign key (employee_id) 
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--drop table roles_employee;

select * from roles_employee; 

insert into roles_employee(employee_id,role_id)
values (7,2),(20,4),(3,9),(5,13),(23,4),(11,2),(10,9),(22,13),(21,3),(34,4),
		(6,7),(1,20),(55,19),(4,3),(2,14),(16,12),(53,1),(17,20),(15,8),(36,5),
		(38,6),(41,14),(65,11),(45,3),(60,8),(51,12),(62,16),(35,15),(29,9),(66,1),
		(33,3),(31,5),(44,10),(54,2),(49,17),(50,2),(42,18),(25,13),(56,4),(46,1);
