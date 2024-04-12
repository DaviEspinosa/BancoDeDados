SELECT * FROM public.tabela_ex

CREATE TABLE TABELA_EX(
NOME VARCHAR(100) NULL
);

CREATE TABLE TABELA_FX(
NOME VARCHAR(100) NULL
);

INSERT INTO tabela_ex VALUES('Claudia');
INSERT INTO tabela_ex VALUES('Alberto');
INSERT INTO tabela_ex VALUES('Adriana');
INSERT INTO tabela_ex VALUES('Gabriel');
INSERT INTO tabela_ex VALUES('Davi');

INSERT INTO tabela_fx VALUES('Gabriel');
INSERT INTO tabela_fx VALUES('Isabela');
INSERT INTO tabela_fx VALUES('Diogo');
INSERT INTO tabela_fx VALUES('Bruno');
INSERT INTO tabela_fx VALUES('Davi');

SELECT ex.nome, fx.nome
FROM tabela_ex AS ex
INNER JOIN tabela_fx AS fx
ON ex.nome = fx.nome

SELECT ex.nome, fx.nome
FROM tabela_ex AS ex
LEFT JOIN tabela_fx AS fx
ON ex.nome = fx.nome

SELECT ex.nome, fx.nome
FROM tabela_ex AS ex
RIGHT JOIN tabela_fx AS fx
ON ex.nome = fx.nome

SELECT ex.nome, fx.nome
FROM tabela_ex AS ex
LEFT JOIN tabela_fx AS fx
ON ex.nome = fx.nome
WHERE fx.nome = NULL