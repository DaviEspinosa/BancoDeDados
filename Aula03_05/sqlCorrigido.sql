SELECT * FROM public.locacao
ORDER BY id_locacao ASC CREATE TABLE Carro (
    Id_Carro SERIAL PRIMARY KEY not null,
    Disponibilidade BOOLEAN NOT NULL,
    Modelo VARCHAR(255) NOT NULL,
    Tipo VARCHAR(100) NOT NULL,
    Placa VARCHAR(20) NOT NULL,
    Ano INTEGER NOT NULL
);

CREATE TABLE Cliente (
    Id_Cliente int PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    Celular VARCHAR(20) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Comprovante VARCHAR(255) NOT NULL,
    Id_Comprovante VARCHAR(50) NOT NULL,
    Data_Comprovante DATE NOT NULL
);

CREATE TABLE Funcionario (
    Nome VARCHAR(255) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    Data_Contratacao DATE NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255) NOT NULL,
    Id_Funcionario SERIAL PRIMARY KEY,
    Id_Agencia INT NOT NULL,
    FOREIGN KEY (Id_Agencia) REFERENCES Agencia (Id_Agencia)
);

CREATE TABLE Agencia (
    Id_Agencia SERIAL PRIMARY KEY not null,
    Contato VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL
);

CREATE TABLE Manutencao (
    Id_Manutencao int PRIMARY KEY,
    Custo DECIMAL(10, 2) NOT NULL,
    Data_Manutencao DATE NOT NULL,
    KM INTEGER NOT NULL,
    Tipo_Manutencao VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255) NOT NULL
);

CREATE TABLE Pagamento (
    Id_Pagamento int PRIMARY KEY,
    Valor DECIMAL(10, 2) NOT NULL,
    Status_Pagamento VARCHAR(255) NOT NULL,
    Data_Pagamento DATE NOT NULL,
    Forma_Pagamento VARCHAR(255) NOT NULL,
    Id_Cliente INT,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)
);

CREATE TABLE Feedback (
    Id_Feedback int PRIMARY KEY,
    Comentario VARCHAR(255) NOT NULL,
    Data_Feedback DATE NOT NULL
);

CREATE TABLE Locacao (
    Id_Locacao int PRIMARY KEY,
    DataDevolucao DATE NOT NULL,
    DataLocacao DATE NOT NULL,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    Id_Cliente INT NOT NULL,
    Id_Carro INT NOT NULL,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente),
    FOREIGN KEY (Id_Carro) REFERENCES Carro (Id_Carro)
);

CREATE TABLE Recebe (
    Id_Carro INT,
    Id_Manutencao INT,
    FOREIGN KEY (Id_Carro) REFERENCES Carro (Id_Carro),
    FOREIGN KEY (Id_Manutencao) REFERENCES Manutencao (Id_Manutencao)
);

CREATE TABLE Envia (
    Id_Feedback INT,
    Id_Cliente INT,
    Id_Comprovante INT,
    FOREIGN KEY (Id_Feedback) REFERENCES Feedback (Id_Feedback),
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)
);



SELECT cliente.nome, cliente.sobrenome ,carro.modelo as Indisponível from carro
join locacao 
ON carro.id_carro = locacao.id_carro
join cliente 
ON cliente.id_cliente = locacao.id_cliente
where disponibilidade = true



