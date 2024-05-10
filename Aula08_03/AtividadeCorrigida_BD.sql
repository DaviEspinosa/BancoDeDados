CREATE DATABASE EX01;

-- Tabelas
CREATE TABLE TBL_FORNECEDORES(
FCODIGO SERIAL NOT NULL,
FNOME VARCHAR(50) NOT NULL,
FSTATUS VARCHAR(10) NOT NULL DEFAULT 'ATIVO',
FCIDADE VARCHAR(50) NOT NULL,
PRIMARY KEY (FCODIGO)
);

CREATE TABLE TBL_PECA(
PCODIGO INT NOT NULL,
PNOME VARCHAR (30) NOT NULL,
PCOR VARCHAR (30) NOT NULL,
PESO DECIMAL (7,2) NOT NULL,
PCIDADE VARCHAR (30) NOT NULL,
PRIMARY KEY (PCODIGO)
);

CREATE TABLE TBL_INSTITUICAO(
ICODIGO INT NOT NULL,
INOME VARCHAR (30)NOT NULL,
PRIMARY KEY (ICODIGO)
);

CREATE TABLE TBL_PROJETO(
PRCODIGO INT NOT NULL,
PRNOME VARCHAR (30) NOT NULL,
CIDADE VARCHAR (30) NOT NULL,
ICODIGO INT NOT NULL,
PRIMARY KEY (PRCODIGO),
FOREIGN KEY (ICODIGO) REFERENCES TBL_INSTITUICAO(ICODIGO)
);

CREATE TABLE TBL_FORNECIMENTO(
FCODIGO INT NOT NULL,
PCODIGO INT NOT NULL,
PRCODIGO INT NOT NULL,
QTDE INT NOT NULL,
PRIMARY KEY (FCODIGO,PCODIGO,PRCODIGO),
FOREIGN KEY (FCODIGO) REFERENCES TBL_FORNECEDORES(FCODIGO),
FOREIGN KEY (PCODIGO) REFERENCES TBL_PECA(PCODIGO),
FOREIGN KEY (PRCODIGO) REFERENCES TBL_PROJETO(PRCODIGO));

-- INDEX
CREATE INDEX IDX_ICODIGO ON TBL_PROJETO(ICODIGO);
CREATE INDEX IDX_FCODIGO ON TBL_FORNECIMENTO(FCODIGO);
CREATE INDEX IDX_PCODIGO ON TBL_FORNECIMENTO(PCODIGO);
CREATE INDEX IDX_PRCODIGO ON TBL_FORNECIMENTO(PRCODIGO);

--(PT 2)
-- -- ALTERAÇÕES


SELECT * FROM TBL_FORNECEDOR;
SELECT * FROM TBL_PECA;
SELECT * FROM TBL_INSTITUICAO;
SELECT * FROM TBL_PROJETO;
SELECT * FROM TBL_FORNECIMENTO;

-- EXCLUSÃO DA TABELA INSTITUICAO

DROP TABLE TBL_PROJETO;

ALTER TABLE TBL_PROJETO
	DROP prcodigo CASCADE

ALTER TABLE TBL_PROJETO
	DROP COLUMN ICOD;

DROP TABLE TBL_INSTITUICAO;

-- CRIAÇÃO DA TABELA CIDADE
CREATE TABLE TBL_CIDADE(
CCOD INT NOT NULL,
CNOME VARCHAR(30) NOT NULL,
UF CHAR(2) NOT NULL,
PRIMARY KEY (CCOD)
);

SELECT * FROM TBL_CIDADE;

-- ALTERAÇÃO NA TABELA FORNECEDOR
SELECT * FROM TBL_FORNECEDOR;

ALTER TABLE TBL_FORNECEDOR
	DROP COLUMN FCIDADE;

ALTER TABLE TBL_FORNECEDOR
	ADD FONE BIGINT NOT NULL;

ALTER TABLE TBL_FORNECEDOR
	ADD CCOD INT NOT NULL;

ALTER TABLE TBL_FORNECEDOR
	ADD CONSTRAINT FK_CCOD_FORNECEDOR
    FOREIGN KEY (CCOD) REFERENCES TBL_CIDADE (CCOD);

SELECT * FROM TBL_FORNECEDOR;

-- ALTERAÇÃO NA TABELA PECA
SELECT * FROM TBL_PECA;

ALTER TABLE TBL_PECA
	DROP COLUMN PCIDADE;

ALTER TABLE TBL_PECA 
	ADD CCOD INT NOT NULL;

ALTER TABLE TBL_PECA
	ADD CONSTRAINT FK_CCOD_PECA
    FOREIGN KEY (CCOD) REFERENCES TBL_CIDADE (CCOD);

-- ALTERAÇÃO NA TABELA PROJETO
SELECT * FROM TBL_PROJETO;

ALTER TABLE TBL_PROJETO
	DROP COLUMN CIDADE;

ALTER TABLE TBL_PROJETO
	ADD CCOD INT NOT NULL;

ALTER TABLE TBL_PROJETO
	ADD CONSTRAINT FK_CCOD_PROJETO
    FOREIGN KEY (CCOD) REFERENCES TBL_CIDADE (CCOD);

-- INDEXES
CREATE INDEX IDX_CCOD_FOR ON TBL_FORNECEDOR(CCOD);
CREATE INDEX IDX_CCOD_PEC ON TBL_PECA(CCOD);
CREATE INDEX IDX_CCOD_PRO ON TBL_PROJETO(CCOD);


-- ALTERAR NOME DA TABELA


ALTER TABLE TBL_EMPRESA
DROP CONSTRAINT ICODIGO;

-- APAGAR CHAVE PRIMARIA
-- ALTER TABLE TBL_INSTITUICAO DROP CONSTRAINT PK__TBL_INST__B83E5535EC7291D7;


--PT 3 inserir dados
SELECT * FROM TBL_FORNECEDOR;
SELECT * FROM TBL_PECA;
SELECT * FROM TBL_INSTITUICAO;
SELECT * FROM TBL_FORNECIMENTO;

--Tabela Cidade
INSERT INTO TBL_CIDADE
VALUES(11, 'LIMEIRA', 'SP');

INSERT INTO TBL_CIDADE
VALUES (12, 'SÃO PAULO', 'SP');

INSERT INTO TBL_CIDADE
VALUES (13,'PIRACICABA', 'SP');

INSERT INTO TBL_PECA
VALUES(0001, 'Processador', 'Padrão', 300, 13),
(0002, 'Lona', 'Azul', 12, 11),
(0003, 'Cachaça', 'Transparente', 11, ),
(0004, 'Hyundai Creta', 100, 10000, );

INSERT INTO TBL_PROJETO
VALUES(01, 'Eletrônicos', 11),
(02, 'Mecânicos', 13),
(03, Escolas, 12);

INSERT INTO TBL_FORNECIMENTO
VALUES(01, 0001, 01, 660),
(02, 0002, 03, 10),
(04, 0004, 02, 220);




















