create database HLT4;
use hlt4
CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      CHAR(1) 		NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);
select * from employees;
INSERT INTO employees VALUES (10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),
(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),
(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),
(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),
(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24');

Update employees
set birth_date='1965-06-12'
where emp_no=10002

select emp_no, birth_date from employees where emp_no=10002;

delete from employees where emp_no=10010;
select * from employees;


CREATE TABLE departments (
	emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40) UNIQUE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
    );
select * from departments

-- Inserting values into the departments table

INSERT INTO departments VALUES 
('10001','d001','Marketing'),
('10002','d002','Finance'),
('10003','d003','Human Resources'),
('10004','d004','Production'),
('10005','d005','Development'),
('10006','d006','Quality Management'),
('10007','d007','Sales'),
('10008','d008','Research'),
('10009','d009','Customer Service');

select * from departments