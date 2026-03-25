--CRIANDO A VIEW
CREATE VIEW ViewValorTotalPedido AS
SELECT p.ID, c.Nome, p.DataHoraPedido, SUM(ip.PrecoUnitario) AS ValorTotalPedido
FROM clientes c
JOIN pedidos p ON c.ID = p.IDCliente
JOIN itens_pedido ip ON p.ID = ip.IDPedido
GROUP BY p.ID, c.Nome;

--UTILIZANDO A VIEW
SELECT * FROM ViewValorTotalPedido
WHERE ValorTotalPedido > 10; 

SELECT * FROM ViewValorTotalPedido
WHERE ValorTotalPedido > 10 AND ValorTotalPedido < 14;

SELECT * FROM ViewValorTotalPedido
WHERE strftime('%m', DataHoraPedido) = '08';