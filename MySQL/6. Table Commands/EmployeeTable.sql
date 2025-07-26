create database infosys;
use infosys;
select database();
show databases;
create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
hire_date date default (CURRENT_DATE()),
email varchar(100) unique,
phone_number varchar(100) unique,
salary decimal(10,2) check(salary > 0.0),
employee_status enum('active','on leave','terminated') default 'active',
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);
INSERT INTO employees(first_name, last_name, hire_date, email, phone_number, salary, employee_status)

VALUES('sk','kumar','2004-01-01','sk.kumar@gmail.com','7055278548',71893.100,'on leave');

select email,first_name,phone_number
from employees


