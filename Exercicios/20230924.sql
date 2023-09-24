/* ATIVIDADE JOINS 


Para cada questão abaixo crie o código SQL que atenda a solicitação e salve em um documento de texto para posteriormente enviar na tarefa. */

/*
Selecione o nome dos funcionários e o nome de suas cidades correspondentes usando um Inner Join entre as tabelas de Funcionários e Cidades; 
*/
SELECT *, classicmodels.offices.city 
FROM classicmodels.employees
INNER JOIN classicmodels.offices ON classicmodels.employees.officeCode = classicmodels.offices.officeCode
 
/*
Liste todos os funcionários, incluindo aqueles que não têm uma cidade associada, usando um Left Join entre as tabelas de Funcionários e Cidades. 
*/
SELECT *, classicmodels.offices.city 
FROM classicmodels.employees
LEFT JOIN classicmodels.offices ON classicmodels.employees.officeCode = classicmodels.offices.officeCode; 
 
/*
Liste o nome de cada funcionário e o nome de seu líder usando um Self Join na tabela de Funcionários.  
*/
SELECT 
    CONCAT(m.lastName, ', ', m.firstName) AS Nome,
    CONCAT(e.lastName, ', ', e.firstName) AS 'Lider'
FROM
    employees e
INNER JOIN employees m ON 
    m.employeeNumber = e.reportsTo
ORDER BY 
    Nome; 

/*
Mostre o nome dos funcionários e o nome de seus países usando Inner Joins entre as tabelas necessárias. 
*/
SELECT 
	CONCAT(employees.firstName, ' ', employees.lastName) AS Nome,
    offices.country
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode

/*
Todos os estados e as cidades associadas (se houver) usando um Left Join entre as tabelas de Estados e Cidades. 
*/
SELECT 
    DISTINCT cidades.city,
    estados.state
FROM
    offices cidades
LEFT JOIN offices estados ON 
    cidades.officeCode = estados.officeCode

/* 
Exiba todos as cidades, incluindo aqueles que não têm um funcionário associado a elas. 
*/
SELECT DISTINCT offices.city FROM offices