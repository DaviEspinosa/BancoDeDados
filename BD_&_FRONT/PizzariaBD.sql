
CREATE TABLE Pizzas (
id_pizza SERIAL NOT NULL PRIMARY KEY ,
valor_pizza DECIMAL(7,2),
quantidade_pizza INT NOT NULL,
nome_pizza VARCHAR(255),
descricao_pizza VARCHAR (100)
)

CREATE TABLE Fornecedor (
id_fornecedor SERIAL NOT NULL PRIMARY KEY,
cep_fornecedor char(14) NOT NULL,
nome_fornecedor VARCHAR(100) NOT NULL
)

CREATE TABLE Funcionarios (
id_funcionarios SERIAL NOT NULL PRIMARY KEY,
nome_funcionarios varchar(100),
status_funcionarios int,
cidade_funcionarios varchar(50)
)

CREATE TABLE Clientes (
id_cliente SERIAL NOT NULL PRIMARY KEY,
nome_cliente VARCHAR(100),
email_cliente VARCHAR(255) NOT NULL,
telefone_cliente char(14) NOT NULL
)

CREATE TABLE Estoque (
id_estoque SERIAL NOT NULL PRIMARY KEY,
quantidade_estoque INT NOT NULL
)

CREATE TABLE Pedidos (
id_pizza INT,
id_cliente INT,
FOREIGN KEY (id_pizzas) REFERENCES Pizzas (id_pizzas),
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
)

CREATE TABLE Quantidade (
id_estoque INT,
id_fornecedor INT,
FOREIGN KEY(id_estoque) REFERENCES Estoque (id_estoque),
FOREIGN KEY(id_fornecedor) REFERENCES Fornecedor (id_fornecedor)
)
ALTER TABLE Clientes
ADD COLUMN senha_cliente VARCHAR(255);
