CREATE TABLE CLIENTE(
    COD_CLIENTES CHAR(3) NOT NULL PRIMARY KEY,
    NOME VARCHAR(40) NOT NULL,
    ENDERECO VARCHAR(50) NOT NULL,
    CIDADE VARCHAR(20) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    CEP CHAR(9) NOT NULL
);

CREATE TABLE VENDA(
    DUPLIC CHAR(6) NOT NULL PRIMARY KEY,
    VALOR DECIMAL(10,2) NOT NULL,
    VECTO DATE NOT NULL,
    COD_CLIENTES CHAR(3) NOT NULL,
    FOREIGN KEY (COD_CLIENTES) REFERENCES CLIENTE (COD_CLIENTES)
);

CREATE INDEX IDX_COD_CLIENTE_VENDA ON VENDA(COD_CLIENTES);


SELECT * FROM VENDA;
SELECT * FROM CLIENTE;

-- SELECT clientes.nome, cidades.nome 
-- FROM cidades, clientes
-- WHERE clientes.cod_cidade = cidades.codigo
-- ORDER BY bairros.descricao, clientes.nome;

SELECT venda.DUPLIC, cliente.NOME
FROM cliente, venda
WHERE cliente.COD_CLIENTES = venda.COD_CLIENTES;

SELECT venda.DUPLIC, cliente.NOME
FROM cliente INNER JOIN venda ON cliente.COD_CLIENTES =
venda.COD_CLIENTES;

SELECT ven.DUPLIC, cli.NOME 
FROM CLIENTE AS cli 
INNER JOIN VENDA AS ven 
ON cli.COD_CLIENTES = ven.COD_CLIENTES
ORDER BY cli.NOME; 

SELECT CLIENTE.NOME, COUNT(*) AS "QUANTIDADE TOTAL"
FROM CLIENTE INNER JOIN VENDA 
ON CLIENTE.COD_CLIENTES = VENDA.COD_CLIENTES
GROUP BY CLIENTE.NOME; 

SELECT * from cliente;
SELECT * from venda;

Select nome, duplic, valor from cliente c
join venda v
on c.cod_clientes = v.cod_clientes;


Select nome, duplic, vecto from cliente c
join venda v
on c.cod_clientes = v.cod_clientes
where vecto BETWEEN '2004-11-01' and  '2004-11-30'
order by vecto;

Select nome, duplic, vecto from cliente c
join venda v
on c.cod_clientes = v.cod_clientes
-- ::text é para conversão do tipo
where vecto::text like '%-10-%';

Select nome, sum(v.valor) from cliente c
join venda v
on c.cod_clientes = v.cod_clientes
GROUP by nome;

Select nome, sum(v.valor) as "Quantidade Total" from cliente c
join venda v
on c.cod_clientes = v.cod_clientes
GROUP by nome;

