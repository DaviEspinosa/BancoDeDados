-- Criando Tabela
CREATE TABLE cadfun(
CODFUN INT NOT NULL PRIMARY KEY,
NOME VARCHAR(40) NOT NULL,
DEPTO CHAR(2),
FUNCAO CHAR(20),
SALARIO NUMERIC(10,2),
FILHO INT NOT NULL
);

-- INSERIR VALORES
INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (12, 'CARLOS ALBERTO', '3', 'VENDEDOR', 1530.00, 4);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (15, 'MARCOS HENRIQUE', '2', 'GERENTE', 1985.75, 9);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (7, 'APARECIDA SILVA', '3', 'SECRETARIA', 1200.50, 7);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (9, 'SOLANGE PACHECO', '5', 'SUPERVISORA', 1599.51, 1);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (6, 'MARCELO SOUZA', '3', 'ANALISTA', 2250.11, 2);

INSERT INTO cadfun (CODFUN, NOME, DEPTO, FUNCAO, SALARIO, FILHO)
VALUES (1, 'CELIA NASCIMENTO', '2', 'SECRETARIA', 1200.5, 2);


INSERT INTO cadfun VALUES (2, 'WILSOM MACEDO','3', 'PROGRAMADOR', 1050.00, 3);
INSERT INTO cadfun VALUES (5, 'AUGUSTO SOUZA','3', 'PROGRAMADOR', 1050.00, 4);
INSERT INTO cadfun VALUES (4, 'CARLOS BASTOS','5', 'VENDEDOR', 1700.00, 6);
INSERT INTO cadfun VALUES (25, 'PEDRO SILVA','3', 'SUPERVISOR', 1599.51, 2);
INSERT INTO cadfun VALUES (3, 'ANA BASTOS','5', 'VENDEDORA', 1530.00, 13);
INSERT INTO cadfun VALUES (10, 'PAULO DA SILVA','2', 'VENDEDOR', 1530.00, 5);

-- SELECT CODFUN, NOME, SALARIO +250 AS SALARIO FROM cadfun;

-- SELECT * FROM cadfun
-- WHERE FUNCAO = 'ANALISTA';

-- SELECT * FROM cadfun
-- WHERE SALARIO > 1700;

-- SELECT * FROM cadfun
-- WHERE SALARIO < 1700;

-- SELECT * FROM cadfun
-- WHERE SALARIO = 1700;

-- SELECT * FROM cadfun
-- WHERE FUNCAO IN ('ANALISTA','PROGRAMADOR');

-- SELECT * FROM cadfun
-- WHERE FUNCAO IN ('ANALISTA', 'PROGRAMADOR') AND SALARIO > 1200; 

-- SELECT * FROM cadfun
-- WHERE FUNCAO NOT IN ('ANALISTA', 'PROGRAMADOR');

-- SELECT * FROM cadfun
-- WHERE FILHO >= 2 AND FILHO <= 4;

-- SELECT * FROM cadfun
-- WHERE FILHO BETWEEN2 AND 4;


UPDATE cadfun SET SALARIO = SALARIO + (SALARIO * 0.25);
SELECT * FROM cadfun;



















