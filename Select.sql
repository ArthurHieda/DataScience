SELECT employee_id, last_name, job_id, department_id
FROM   employees
WHERE  department_id = 90 ;

SELECT last_name, job_id, department_id
FROM   employees
WHERE  last_name = 'Whalen' ;


------
SELECT last_name, salary
FROM   employees
WHERE  salary <= 3000 ;


SELECT last_name, salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500 ; -- NOT BETWEEN Funciona


----

SELECT employee_id, last_name, salary, manager_id
FROM   employees
WHERE  manager_id IN (100, 101, 201) ; -- NOT IN Funciona

SELECT	first_name
FROM 	employees
WHERE	first_name LIKE '%s%' 
or      first_name LIKE '%S%';

-----
SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%' ; -- Segunda posic�o deve ter a letra "o" e NOT LIKE Funciona


SELECT last_name, commission_pct
FROM   employees
WHERE  commission_pct IS NULL ; -- N�O USAR "=" USE "IS" e IS not NULL Funciona tamb�m

-----
SELECT employee_id, last_name, job_id, salary 
FROM   employees
WHERE  salary >=10000
AND    job_id LIKE '%MAN%' ; -- O uso do "AND" s� retorna TRUE se as duas condi��es forem verdadeiras


SELECT employee_id, last_name, job_id, salary
FROM   employees
WHERE  salary >= 10000
OR     job_id LIKE '%MAN%' ; -- O uso do "OR" s� uma condi��o precisa ser verdade, ou seja, nem todos empregados precisam sem manager
                             -- e nem todos empregados precisam ter mais de 10000 de sal�rio

-----
SELECT last_name, job_id
FROM   employees
WHERE  job_id 
       NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP') ;
-----
SELECT last_name, job_id, salary
FROM   employees
WHERE  job_id = 'SA_REP'
OR     job_id = 'AD_PRES'
AND    salary > 15000; -- Os termos tem pesos no programa sendo respectivamente "Not, And, Or"


SELECT last_name, job_id, salary
FROM   employees
WHERE  (job_id = 'SA_REP'
OR     job_id = 'AD_PRES')
AND    salary > 15000; -- Aqui com a coloca��o dos par�nteses o peso maior est� no "or"

-----

SELECT   last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date; -- Ordena de forma ascendente os hire_date

-----

SELECT   last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC; -- Ordena de forma descendente

SELECT employee_id, last_name, salary*12 as annsal
FROM   employees
ORDER BY annsal ;

SELECT last_name, department_id, salary
FROM   employees
ORDER BY department_id, salary DESC; -- Aqui o departamente ser� ascendente e o sal�rio ser� descendente

SELECT last_name, department_id, salary
FROM   employees
ORDER BY 2,3 DESC; -- Ordenando pela coluna da lista, logo, a coluna 2 = deparment_id e a coluna = 3 salary


