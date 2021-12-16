-- 1
select  department_id, 
        to_char(sum(salary), '9999G999D00') as salary
from employees
group by department_id;

--2
select  employee_id,
        trunc(hire_date, 'yyyy') as hire_year
from employees;

--3
select  employee_id,
        to_char(trunc(hire_date, 'yyyy'), 'yyyy') as hire_year
from employees;

--4
select  employee_id,
        to_number(to_char(trunc(hire_date, 'yyyy'), 'yyyy')) as hire_year_int
from employees;

--5
select max(hire_year_int) as max,
        min(hire_year_int) as min,
        avg(hire_year_int) as avg 
from
        (
            select  employee_id,
                    to_number(to_char(trunc(hire_date, 'yyyy'), 'yyyy')) as hire_year_int
            from employees
        );

--6
create table hurricane(
        name varchar2(64),
        report_year date,
        victims number 
        );

--7
alter table hurricane
modify (
    name NOT null
    );
    
--8
truncate table hurricane;

--9
drop table hurricane;

