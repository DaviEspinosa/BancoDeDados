-- Exercicios SELECT
-- Exercicio 1
SELECT * FROM carro
WHERE disponibilidade = TRUE

-- Exercicio 2
SELECT cli.Nome, cli.Sobrenome, l.datalocacao
FROM Cliente cli
JOIN Locacao l ON cli.Id_Cliente = l.Id_Cliente
WHERE l.DataLocacao >= CURRENT_DATE - INTERVAL '3 months';
--filtra os resultados da consulta
-- current-date retorna data atual e interva subtrai 3 meses

-- Exercicio 3
SELECT f.nome, ag.endereco, ag.cidade  FROM FUNCIONARIO f
inner join agencia ag
on ag.id_agencia = f.id_agencia
WHERE ag.id_agencia = 1;

-- Exercicio 4
SELECT 	cli.nome, p.* FROM cliente cli
inner join pagamento p
on p.id_cliente = cli.id_cliente
WHERE nome = 'João'

-- Exercicio 5
SELECT car.* FROM Carro car
INNER JOIN Recebe r 
ON car.id_Carro = r.id_Carro;

-- Exercicio 6
SELECT DISTINCT cli.*
FROM Cliente cli
WHERE (
    SELECT COUNT(*)
    FROM Locacao l
    WHERE l.Id_Cliente = cli.Id_Cliente
) > 1;
-- A subConsulta esta sendo usada para ver quantas
-- vezes o cliente aparece na tabela LOCAÇÃo

-- Exercicio 7
SELECT DISTINCT car.modelo, cli.nome Cliente, cli.sobrenome, cli.cidade Cidade_Cliente, func.nome Funcionario, func.cidade Cidade_Funcionario FROM carro car
JOIN locacao loc 
ON car.id_Carro = loc.id_Carro
JOIN cliente cli 
ON loc.id_Cliente = cli.id_Cliente
JOIN funcionario func 
ON cli.Cidade = func.Cidade
WHERE cli.cidade = func.cidade ;

-- UPDATE Funcionario
-- SET cidade = CASE 
--                 WHEN Id_Funcionario = 1 THEN 'São Paulo'
--                 WHEN Id_Funcionario = 2 THEN 'Rio de Janeiro'
--                 WHEN Id_Funcionario = 3 THEN 'Minas Gerais'
--                 WHEN Id_Funcionario = 4 THEN 'Paraná'
--                 WHEN Id_Funcionario = 5 THEN 'Rio Grande do Sul'
--             END
-- WHERE Id_Funcionario IN (1, 2, 3, 4, 5);



-- Exercicios UPDATE
-- Exercicio 1
UPDATE carro
SET valor = CASE 
                 WHEN id_carro between 1 and 30 then 1000.00
			END
WHERE id_carro between 1 and 30
select carro.valor from carro

-- Exercicio 2
UPDATE locacao
SET datadevolucao = '2024-05-15'
WHERE Id_Locacao = 1;

-- Exercicio 3
UPDATE Carro
SET Disponibilidade = true
WHERE Id_Carro = 1;



-- Exercicio ALTER TABLE
-- Exercicio 1
ALTER TABLE Carro
ADD COLUMN Disponibilidade BOOLEAN DEFAULT true;

-- Exercicio 2
ALTER TABLE Pagamento
ALTER COLUMN Valor TYPE DECIMAL(12, 2);

-- Exercicio 3
ALTER TABLE Cliente
DROP COLUMN Celular;



-- Exercicios JOIN
-- Exercicio 1
SELECT cliente.Nome, cliente.Sobrenome, carro.Modelo, locacao.DataLocacao
FROM Locacao
JOIN Cliente ON Locacao.Id_Cliente = Cliente.Id_Cliente
JOIN Carro ON Locacao.Id_Carro = Carro.Id_Carro;

-- Exercicio 2
SELECT cliente.Nome, cliente.Sobrenome, pagamento.Valor
FROM Pagamento
JOIN Cliente ON Pagamento.Id_Cliente = Cliente.Id_Cliente;

-- Exercicio 3
SELECT cliente.Nome, cliente.Sobrenome, carro.Modelo, feedback.Comentario
FROM Feedback
JOIN Cliente ON Feedback
JOIN Locacao ON Feedback.Id_Cliente = Locacao.Id_Cliente
JOIN Carro ON Locacao.Id_Carro = Carro.Id_Carro;



-- Exercicios INNER JOIN
-- Exercicio 1
SELECT Carro.Modelo, Carro.Tipo, Carro.Placa, Carro.Ano
FROM Carro
INNER JOIN Agencia ON Carro.Id_Agencia = Agencia.Id_Agencia
WHERE Agencia.Cidade = 'X' AND Carro.Disponibilidade = true;

-- Exercicio 2
SELECT Cliente.Nome, Cliente.Sobrenome, Carro.Modelo, Locacao.DataLocacao, Locacao.DataDevolucao
FROM Locacao
INNER JOIN Cliente ON Locacao.Id_Cliente = Cliente.Id_Cliente
INNER JOIN Carro ON Locacao.Id_Carro = Carro.Id_Carro
INNER JOIN Agencia ON Carro.Id_Agencia = Agencia.Id_Agencia
WHERE Cliente.Cidade = 'Y';

-- Exercicio 3
SELECT Funcionario.Nome, Funcionario.Sobrenome, Agencia.Cidade
FROM Funcionario
INNER JOIN Agencia ON Funcionario.Id_Agencia = Agencia.Id_Agencia
INNER JOIN Carro ON Agencia.Id_Agencia = Carro.Id_Agencia
WHERE Carro.Modelo LIKE '%Toyota%';




-- Exercicios LEFT JOIN
-- Exercicio 1
SELECT Carro.Modelo, Carro.Tipo, Feedback.Comentario
FROM Carro
LEFT JOIN Locacao ON Carro.Id_Carro = Locacao.Id_Carro
LEFT JOIN Feedback ON Locacao.Id_Cliente = Feedback.Id_Cliente;

-- Exercicio 2
SELECT Cliente.Nome, Cliente.Sobrenome, COUNT(Locacao.Id_Locacao) AS Num_Alugueis
FROM Cliente
LEFT JOIN Locacao ON Cliente.Id_Cliente = Locacao.Id_Cliente
GROUP BY Cliente.Id_Cliente;

-- Exercicio 3
SELECT Agencia.Id_Agencia, Agencia.Cidade, COUNT(Carro.Id_Carro) AS Num_Carros_Disponiveis
FROM Agencia
LEFT JOIN Carro ON Agencia.Id_Agencia = Carro.Id_Agencia AND Carro.Disponibilidade = true
GROUP BY Agencia.Id_Agencia;




-- Exercicios RIGHT JOIN
-- Exercicio 1
SELECT Feedback.Comentario, Locacao.DataLocacao, Locacao.DataDevolucao
FROM Feedback
RIGHT JOIN Locacao ON Feedback.Id_Cliente = Locacao.Id_Cliente;

-- Exercicio 2
SELECT Carro.Modelo, Carro.Disponibilidade
FROM Carro
RIGHT JOIN Locacao ON Carro.Id_Carro = Locacao.Id_Carro;

-- Exercicio 3
SELECT Manutencao.Descricao, Carro.Modelo
FROM Manutencao
RIGHT JOIN Carro ON Manutencao.Id_Carro = Carro.Id_Carro;




-- Exercicios SUB-QUERY
-- Exercicio 1
SELECT Id_Cliente, Nome, Sobrenome
FROM Cliente
WHERE Id_Cliente IN (
    SELECT Id_Cliente
    FROM Locacao
    GROUP BY Id_Cliente
    HAVING COUNT(*) > 1
);

-- Exercicio 2
SELECT Modelo, COUNT(*) AS Num_Alugueis
FROM Carro
WHERE Id_Carro IN (
    SELECT Locacao.Id_Carro
    FROM Locacao
    JOIN Feedback ON Locacao.Id_Cliente = Feedback.Id_Cliente
    WHERE Feedback.Comentario = 'positivo'
)
GROUP BY Modelo
ORDER BY COUNT(*) DESC;



-- Exercicios AGREGAÇÃO
-- 9.0
SELECT SUM(Valor) AS Total_Pagamentos
FROM Pagamento
WHERE Data_Pagamento BETWEEN '2024-01-01' AND '2024-12-31';

-- 9.0.1
SELECT AVG(DATEDIFF(Data_Manutencao, DataDevolucao)) AS Media_Dias_Manutencao
FROM Locacao
JOIN Manutencao ON Locacao.Id_Carro = Manutencao.Id_Carro;

-- 9.1
SELECT COUNT(*) AS Total_Carros_Disponiveis
FROM Carro
WHERE Disponibilidade = true;

-- 9.1
SELECT SUM(ValorTotal) AS Valor_Total_Arrecadado
FROM Locacao
WHERE DataLocacao >= CURRENT_DATE - INTERVAL '3 MONTH';

-- 9.1
SELECT AVG(ValorTotal / DATE(DataDevolucao, DataLocacao)) AS Preco_Medio_Aluguel_Por_Dia
FROM Locacao;

-- 9.2
SELECT Modelo, COUNT(*) AS Quantidade
FROM Carro
GROUP BY Modelo;

-- 9.2
SELECT YEAR(DataLocacao) AS Ano, MONTH(DataLocacao) AS Mes, SUM(ValorTotal) AS Valor_Total_Alugueis
FROM Locacao
GROUP BY YEAR(DataLocacao), MONTH(DataLocacao);

-- 9.2
SELECT Forma_Pagamento, SUM(Valor) AS Total_Pagamentos
FROM Pagamento
GROUP BY Forma_Pagamento;

-- 9.3
SELECT COUNT(*) AS Total_Carros_Agencia_X
FROM Carro
WHERE Id_Agencia = (SELECT Id_Agencia FROM Agencia WHERE Cidade = 'X');

-- 9.3
SELECT SUM(ValorTotal) AS Valor_Total_Arrecadado
FROM Locacao
WHERE Id_Cliente IN (SELECT Id_Cliente FROM Cliente WHERE Cidade = 'Y');

-- 9.3
SELECT AVG(DATEDIFF(DataDevolucao, DataLocacao)) AS Media_Dias_Aluguel
FROM Locacao
JOIN Carro ON Locacao.Id_Carro = Carro.Id_Carro
WHERE Carro.Marca = 'Toyota';

-- 9.4
SELECT COUNT(*) AS Total_Alugueis_Excedentes
FROM Locacao
WHERE ValorTotal > 1990.00;

-- 9.4
SELECT SUM(Valor) AS Total_Pagamentos
FROM Pagamento
WHERE Id_Cliente IN (
    SELECT Id_Cliente
    FROM Locacao
    GROUP BY Id_Cliente
    HAVING COUNT(*) > 1
);

-- 9.4

SELECT AVG(DATEDIFF(Data_Manutencao, Data_Manutencao_Fim)) AS Media_Dias_Manutencao
FROM Manutencao
WHERE Custo > 99999;



