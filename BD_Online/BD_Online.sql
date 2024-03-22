-- Criando Tabela
CREATE TABLE cadfun(
CODFUN INT NOT NULL PRIMARY KEY,
NOME VARCHAR(40) NOT NULL,
DEPTO CHAR(2),
FUNCAO CHAR(20),
SALARIO NUMERIC(10,2)
);

-- INSERIR VALORES
INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (12, 'CARLOS ALBERTO', '3', 'VENDEDOR', 1530.00);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (15, 'MARCOS HENRIQUE', '2', 'GERENTE', 1985.75);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (7, 'APARECIDA SILVA', '3', 'SECRETARIA', 1200.50);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (9, 'SOLANGE PACHECO', '5', 'SUPERVISORA', 1599.51);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (6, 'MARCELO SOUZA', '3', 'ANALISTA', 2250.11);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO)
VALUES (1, 'CELIA NASCIMENTO', '2', 'SECRETARIA', 1200.5);


INSERT INTO cadfun VALUES (2, 'WILSOM MACEDO','3', 'PROGRAMADOR', 1050.00);
INSERT INTO cadfun VALUES (5, 'AUGUSTO SOUZA','3', 'PROGRAMADOR', 1050.00);
INSERT INTO cadfun VALUES (4, 'CARLOS BASTOS','5', 'VENDEDOR', 1530.00);
INSERT INTO cadfun VALUES (25, 'PEDRO SILVA','3', 'SUPERVISOR', 1599.51);
INSERT INTO cadfun VALUES (3, 'ANA BASTOS','5', 'VENDEDORA', 1530.00);
INSERT INTO cadfun VALUES (10, 'PAULO DA SILVA','2', 'VENDEDOR', 1530.00);


SELECT * FROM cadfun

SELECT CODEFUN, NOME FROM cadfun;
SELECT FUNCAO FROM cadfun;
SELECT NOME, FUNCAO, DEPTO FROM cadfun;

-- CONDIÇÃO
SELECT NOME, SALARIO FROM cadfun
WHERE CODFUN = 1;

SELECT NOME, SALARIO FROM cadfun
WHERE CODFUN > 2;

SELECT NOME, SALARIO FROM cadfun
WHERE FUNCAO = 'PROGRAMADOR';

SELECT OME, SALARIO FROM cadfun
WHERE SALARIO < 2500 OR FUNCAO = 'PROGRAMADOR';

SELECT OME, SALARIO FROM cadfun
WHERE SALARIO < 2500 AND FUNCAO = 'PROGRAMADOR';

-- CLAUSULA DISTINCT
SELECT SALARIO FROM cadfun;
SELECT DISTINCT SALARIO FROM cadfun;

DEFINIDO SE VAI SER CRESCENTE OU DESCRESCENTE
SELECT NOME, SALARIO FROM cadfun
ORDER BY NOME ASC;

SELECT NOME, SALARIO FROM cadfun
ORDER BY NOME DESC;

SELECT NOME, SALARIO FROM cadfun
ORDER BY SALARIO DESC;

SELECT * FROM cadfun
ORDER BY NOME ;

SELECT NOME, FUNCAO, DEPTO FROM cadfun
ORDER BY DEPTO, NOME, FUNCAO  DESC;

SELECT NOME, SALARIO FROM cadfun
ORDER BY NOME
LIMIT 3;

SELECT NOME, SALARIO FROM cadfun
ORDER BY NOME
LIMIT 1 offset 2;







