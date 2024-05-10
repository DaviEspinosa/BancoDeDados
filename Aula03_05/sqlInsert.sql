

-- INSERTs para a tabela Carro
INSERT INTO Carro (Disponibilidade, Modelo, Tipo, Placa, Ano) VALUES
(true, 'Toyota Corolla', 'Sedan', 'ABC1234', 2020),
(true, 'Honda Civic', 'Sedan', 'DEF5678', 2019),
(false, 'Volkswagen Golf', 'Hatchback', 'GHI9012', 2018),
(true, 'Ford Mustang', 'Esportivo', 'JKL3456', 2021),
(false, 'Jeep Renegade', 'SUV', 'MNO7890', 2017),
(true, 'Chevrolet Onix', 'Hatchback', 'PQR1234', 2020),
(true, 'BMW X3', 'SUV', 'STU5678', 2019),
(false, 'Audi A4', 'Sedan', 'VWX9012', 2018),
(true, 'Fiat Uno', 'Compacto', 'YZA3456', 2021),
(false, 'Mercedes-Benz C-Class', 'Sedan', 'BCD7890', 2017),
(true, 'Hyundai HB20', 'Hatchback', 'EFG1234', 2020),
(true, 'Renault Duster', 'SUV', 'HIJ5678', 2019),
(false, 'Nissan Versa', 'Sedan', 'KLM9012', 2018),
(true, 'Chevrolet Tracker', 'SUV', 'NOP3456', 2021),
(false, 'Ford EcoSport', 'SUV', 'QRS7890', 2017),
(true, 'Volkswagen Polo', 'Hatchback', 'TUV1234', 2020),
(true, 'Toyota RAV4', 'SUV', 'WXY5678', 2019),
(false, 'Honda Fit', 'Compacto', 'ZAB9012', 2018),
(true, 'BMW 3 Series', 'Sedan', 'CDE3456', 2021),
(false, 'Audi Q5', 'SUV', 'FGH7890', 2017),
(true, 'Fiat Argo', 'Hatchback', 'IJK1234', 2020),
(true, 'Chevrolet S10', 'Picape', 'LMN5678', 2019),
(false, 'Ford Ranger', 'Picape', 'OPQ9012', 2018),
(true, 'Volkswagen Gol', 'Hatchback', 'RST3456', 2021),
(true, 'Toyota Hilux', 'Picape', 'UVW7890', 2017),
(false, 'Honda CR-V', 'SUV', 'XYZ1234', 2020),
(true, 'BMW X5', 'SUV', 'ABC5678', 2019),
(false, 'Audi A3', 'Sedan', 'DEF9012', 2018),
(true, 'Fiat Toro', 'Picape', 'GHI3456', 2021),
(true, 'Chevrolet Spin', 'Minivan', 'JKL7890', 2017);

-- INSERTs para a tabela Cliente
INSERT INTO Cliente (Email, Sobrenome, Celular, Nome, Estado, Endereco, Cidade, Comprovante, Id_Comprovante, Data_Comprovante) VALUES
('cliente1@example.com', 'Silva', '(11) 91234-5678', 'João', 'São Paulo', 'Rua A, 123', 'São Paulo', 'CPF', '12345678900', '2024-04-01'),
('cliente2@example.com', 'Santos', '(21) 98765-4321', 'Maria', 'Rio de Janeiro', 'Rua B, 456', 'Rio de Janeiro', 'CPF', '98765432100', '2024-04-02'),
('cliente3@example.com', 'Oliveira', '(31) 99876-5432', 'José', 'Minas Gerais', 'Rua C, 789', 'Belo Horizonte', 'CPF', '45678901200', '2024-04-03'),
('cliente4@example.com', 'Pereira', '(41) 12345-6789', 'Ana', 'Paraná', 'Av. D, 456', 'Curitiba', 'CNPJ', '12345678901234', '2024-04-04'),
('cliente5@example.com', 'Ferreira', '(51) 98765-4321', 'Pedro', 'Rio Grande do Sul', 'Rua E, 789', 'Porto Alegre', 'CPF', '98765432100', '2024-04-05');

-- INSERTs para a tabela Funcionario
INSERT INTO Funcionario (Nome, Salario, Data_Contratacao, Sobrenome, Cargo, Id_Agencia) VALUES
('Ana', 3500.00, '2020-01-15', 'Pereira', 'Gerente', 1),
('Pedro', 2800.00, '2021-05-20', 'Souza', 'Vendedor', 2),
('Maria', 3000.00, '2019-11-10', 'Ferreira', 'Atendente', 1),
('João', 3200.00, '2022-03-25', 'Santos', 'Gerente', 3),
('Carla', 2700.00, '2023-07-12', 'Oliveira', 'Vendedor', 4);

-- INSERTs para a tabela Agencia
INSERT INTO Agencia (Contato, Endereco, Estado, Cidade) VALUES
('contato1@example.com', 'Av. Principal, 123', 'São Paulo', 'São Paulo'),
('contato2@example.com', 'Rua Secundária, 456', 'Rio de Janeiro', 'Rio de Janeiro'),
('contato3@example.com', 'Alameda Central, 789', 'Minas Gerais', 'Belo Horizonte'),
('contato4@example.com', 'Travessa da Paz, 101', 'Paraná', 'Curitiba'),
('contato5@example.com', 'Praça da Liberdade, 202', 'Rio Grande do Sul', 'Porto Alegre');

-- INSERTs para a tabela Manutencao
INSERT INTO Manutencao (Custo, Data_Manutencao, KM, Tipo_Manutencao, Descricao) VALUES
(250.00, '2024-03-15', 50000, 'Preventiva', 'Troca de óleo e filtros'),
(450.00, '2024-02-20', 60000, 'Corretiva', 'Substituição do sistema de freios'),
(300.00, '2024-04-10', 55000, 'Preventiva', 'Alinhamento e balanceamento'),
(400.00, '2024-03-25', 70000, 'Corretiva', 'Substituição da embreagem'),
(350.00, '2024-04-05', 60000, 'Preventiva', 'Troca de velas e cabos'),
(500.00, '2024-02-10', 80000, 'Corretiva', 'Reparo na suspensão'),
(200.00, '2024-01-20', 40000, 'Preventiva', 'Inspeção geral'),
(600.00, '2024-03-05', 75000, 'Corretiva', 'Substituição do radiador'),
(450.00, '2024-02-15', 65000, 'Preventiva', 'Troca de correias'),
(350.00, '2024-04-10', 70000, 'Corretiva', 'Reparo na parte elétrica');

-- INSERTs para a tabela Pagamento
INSERT INTO Pagamento (Valor, Status_Pagamento, Data_Pagamento, Forma_Pagamento, Id_Cliente) VALUES
(1500.00, 'Pago', '2024-04-05', 'Cartão de Crédito', 1),
(2000.00, 'Pendente', '2024-04-10', 'Transferência Bancária', 2),
(1800.00, 'Pago', '2024-04-15', 'Dinheiro', 3),
(2200.00, 'Pendente', '2024-04-20', 'Boleto Bancário', 4),
(1600.00, 'Pago', '2024-04-25', 'Cartão de Débito', 5);

-- INSERTs para a tabela Feedback
INSERT INTO Feedback (Comentario, Data_Feedback) VALUES
('Ótimo atendimento!', '2024-04-07'),
('Produto de qualidade.', '2024-04-12'),
('Rápido e eficiente.', '2024-04-18'),
('Precisa melhorar.', '2024-04-23'),
('Excelente serviço!', '2024-04-28');

-- INSERTs para a tabela Locacao
INSERT INTO Locacao (DataDevolucao, DataLocacao, ValorTotal, Id_Cliente, Id_Carro) VALUES
('2024-04-20', '2024-04-10', 800.00, 1, 1),
('2024-04-25', '2024-04-15', 900.00, 2, 2),
('2024-04-30', '2024-04-20', 1000.00, 3, 3),
('2024-05-05', '2024-04-25', 1100.00, 4, 4),
('2024-05-10', '2024-05-01', 1200.00, 5, 5);

-- INSERTs para a tabela Recebe
INSERT INTO Recebe (Id_Carro, Id_Manutencao) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- INSERTs para a tabela Envia
INSERT INTO Envia (Id_Feedback, Id_Cliente, Id_Comprovante) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);




