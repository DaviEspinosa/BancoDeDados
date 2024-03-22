CREATE TABLE FORNECEDOR(
	cod_fornecedor SERIAL NOT NULL PRIMARY KEY,
	nome_fornecedor VARCHAR(100) NOT NULL,
	Status INT NOT NULL DEFAULT '1',
	cidade_fornecedor VARCHAR(100)	
)

CREATE TABLE PECA(
	cod_peca SERIAL NOT NULL PRIMARY KEY,
	nome_peca VARCHAR(100) NOT NULL,
	cor_peca VARCHAR(100) NOT NULL,
	peso_peca INT NOT NULL,
	cidade_peca VARCHAR(100) NOT NULL	
)

CREATE TABLE INSTITUICAO(
	cod_instituicao SERIAL NOT NULL PRIMARY KEY,
	nome_instituicao VARCHAR(100) NOT NULL
)

CREATE TABLE PROJETO(
	cod_projeto SERIAL NOT NULL PRIMARY KEY,
	nome_projeto VARCHAR(100) NOT NULL,
	cidade_projeto VARCHAR(100) NOT NULL,
	cod_instituicao INT,
	FOREIGN KEY (cod_instituicao) REFERENCES INSTITUICAO (cod_instituicao)
)

CREATE TABLE FORNECIMENTO(
	FOREIGN KEY cod_fornecedor REFERENCES FORNECEDOR,
	FOREIGN KEY cod_peca REFERENCES PECA,
	FOREIGN KEY cod_projeto REFERENCES PROJETO,
	quantidade INT NOT NULL
)

CREATE INDEX idx_Fcod ON FORNECEDOR(cod_fornecedor)
CREATE INDEX idx_Pcod ON PECA(cod_peca)
CREATE INDEX idx_PRcod ON PROJETO(cod_projeto
								  
								  

