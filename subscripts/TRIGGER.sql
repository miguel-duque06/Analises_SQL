INSERT INTO FaturamentoDiario (Dia, FaturamentoTotal)
SELECT DATE(datahorapedido) AS Dia, SUM(ip.PrecoUnitario) AS FaturamentoDiario
FROM pedidos p
JOIN itens_pedido ip
ON p.ID = ip.IDPedido
GROUP BY Dia;


CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT ON itens_pedido
FOR EACH ROW
BEGIN
DELETE FROM FaturamentoDiario;
INSERT INTO FaturamentoDiario (Dia, FaturamentoTotal)
SELECT DATE(DataHoraPedido) AS Dia, SUM(ip.PrecoUnitario) AS FaturamentoDiario
FROM pedidos p
JOIN itens_pedido ip 
ON p.ID = ip.IDPedido
GROUP BY Dia
ORDER BY Dia;
END;

--COLOCANDO TRIGGER EM PRÁTICA
INSERT INTO Pedidos(ID, IDCliente, DataHoraPedido, Status) --MUDA NADA NO TRIGGER, POIS O TRIGGER SÓ ATIVA NO PRÓXIMO COMANDO
VALUES (451, 27, '2023-10-07 14:30:00', 'Em Andamento');

INSERT INTO itens_pedido(IDPedido, IDProduto, Quantidade, PrecoUnitario) --TRIGGER SENDO ATIVADO
VALUES (451, 14, 1, 6.0),
         (451, 13, 1, 7.0);
                  
SELECT * FROM FaturamentoDiario;

INSERT INTO Pedidos (ID, IDCliente, DataHoraPedido, Status) 
VALUES (452, 28, '2023-10-07 14:35:00', 'Em Andamento');

INSERT INTO itens_pedido (IDPedido, IDProduto, Quantidade, PrecoUnitario) VALUES (452, 10, 1, 5.0),
         (452, 31, 1, 12.50);

SELECT * FROM FaturamentoDiario;