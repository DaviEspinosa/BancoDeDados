CREATE TABLE CIDADE(
cod_cidade SERIAL NOT NULL PRIMARY KEY,
nome_cidade VARCHAR(100) NOT NULL,
uf VARCHAR (2)NOT NULL
)

ALTER TABLE FORNECEDOR
DROP COLUMN cidade_fornecedor
								  
ALTER TABLE FORNECEDOR 
ADD COLUMN Fone INT

ADD COLUMN cod_cidade INT

ALTER TABLE FORNECEDOR 
ADD CONSTRAINT cod_cidade FOREIGN KEY (cod_cidade) REFERENCES CIDADE
	
ALTER TABLE PECA
DROP COLUMN cidade_peca

ALTER TABLE PECA
ADD COLUMN cod_cidade INT

ALTER TABLE PECA 
ADD CONSTRAINT cod_cidade FOREIGN KEY (cod_cidade) REFERENCES CIDADE

ALTER TABLE PROJETO 
DROP COLUMN cidade_projeto

ALTER TABLE PROJETO
DROP COLUMN cidade_projeto

ALTER TABLE PROJETO
ADD COLUMN Ccodigo INT

ALTER TABLE PROJETO
ADD CONSTRAINT cod_cidade FOREIGN KEY (code_cidade) REFERENCES CIDADE

DROP TABLE INSTITUICAO

