-- SQLite

--9
-- Alterando e-mail do cliente 

UPDATE CUSTOMERS SET EMAIL = "carolina@campuscode.com.br" 
where ID = 9;

SELECT * FROM CUSTOMERS


-- 10
-- Editar data de nascimento com nome Josefa

UPDATE CUSTOMERS SET BIRTH_DATE = "1986-06-19"
WHERE NAME = 'Josefa';

SELECT * FROM CUSTOMERS

-- 11
-- Editar o ano do automovel com o nome Fiat Cronos

UPDATE CARS SET YEAR = 2019
WHERE NAME = 'Fiat Cronos';

SELECT * FROM CARS

-- 12
-- Excluir o automovel com o nome Hyundai HB20 1.6

DELETE FROM CARS WHERE NAME = 'Hyundai HB20 1.6'

SELECT * FROM CARS

-- 13
-- Alterar o nome da coluna PHONE da tabela EMPLOYEES para PHONE NUMBER

ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER

SELECT * FROM EMPLOYEES

-- 14
-- Consulta que retorno somente name, lastname e email de clientes de são paulo

SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS
WHERE STATE = 'SP';

SELECT * FROM CUSTOMERS

-- 15 
-- Consulta que retorne somente status liberado

SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16
-- Consulta que retorno todos os carros de 2016

SELECT * FROM CARS WHERE YEAR = 2016

-- 17
-- Consulta para mostrar todos os funcionarios e os seus cargos

SELECT 
    E.NAME AS 'Nome do Funcionario',
    P.DESCRIPTION AS 'Cargo'
 FROM EMPLOYEES AS E
INNER JOIN POSITIONS AS P ON E.POSITION_ID = P.ID;


-- 18
-- Consultar somente funcionarios que fizeram 2 ou mais locações

SELECT e.*
FROM EMPLOYEES e
INNER JOIN (
  SELECT EMPLOYEE_ID, COUNT(*) as NUM_LOCATION
  FROM LOCATIONS
  GROUP BY EMPLOYEE_ID
  HAVING NUM_LOCATION >= 2
) as l ON e.id = l.EMPLOYEE_ID;

-- 19
-- Consultar clientes que fizeram 2 ou mais locações

SELECT C.*
FROM  CUSTOMERS AS C
INNER JOIN (
    SELECT CUSTOMER_ID, COUNT(*) AS NUM_RENT
    FROM LOCATIONS
    GROUP BY CUSTOMER_ID
    HAVING NUM_RENT >= 2
) AS L ON C.ID = L.CUSTOMER_ID;

-- 20
-- Consulta de locação exibindo, nome cliente, do automovel e do funcionario vinculado.ABORT

SELECT  C.NAME AS 'Cliente',
        CAR.NAME AS 'Automovel',
        E.NAME AS 'Funcionario'
FROM LOCATIONS AS L 
INNER JOIN CUSTOMERS AS C ON L.CUSTOMER_ID = C.ID
INNER JOIN CARS AS CAR ON L.CAR_ID = CAR.ID
INNER JOIN EMPLOYEES AS E ON L.EMPLOYEE_ID = E.ID;


-- 21
-- Exibir quantas locações existem na tabela LOCATIONS

SELECT COUNT(ID) AS 'Quantidade de locações' FROM LOCATIONS 

-- 22
-- Exibir a locação em que o total foi maior

SELECT MAX(TOTAL) AS 'Maximo total' FROM LOCATIONS

SELECT * FROM LOCATIONS

-- 23
-- Exibir locações realizadas entra as datas “2022-05-20” a “2022-12-25”

SELECT * FROM LOCATIONS WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-25'