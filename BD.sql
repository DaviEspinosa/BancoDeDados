-- Criando banco de dados (create)
-- CREATE DATABASE EXEMPLO;
-- Deletando banco de dados (drop)
-- DROP DATABASE EXEMPLO

-- Criando tabela do banco (create + table)

CREATE TABLE FUNCIONARIOS (
id_funcionarios SERIAL NOT NULL PRIMARY KEY,
nome_funcionarios VARCHAR(100) NOT NULL,
status_funcionarios INT NOT NULL,
cidade_funcionarios VARCHAR(50)
)

CREATE TABLE PRODUTOS(
id_produtos INT NOT NULL PRIMARY KEY,
nome_produtos VARCHAR(255) NOT NULL,
quantidade_produtos INT NOT NULL,
valor_produtos DECIMAL(7,2) NOT NULL,
validade_produtos DATE NOT NULL,
FOREIGN KEY (id_funcionarios) REFERENCES FUNCIONARIOS (id_funcionarios)--Chave Estrangeira ^
)
-- Alterando campos da tabelas
ALTER TABLE funcionarios
ADD sexo CHAR(1)
-- Excluindo campo que adicionei
ALTER TABLE funcionarios
DROP COLUMN sexo

CREATE TABLE MODELO(
id_modelo INT NOT NULL PRIMARY KEY
)
-- Deletar tabela (drop + table)
DROP TABLE MODELO

-- Visualizar a tabela (select + from + nome da tabela)
SELECT * FROM FUNCIONARIOS
