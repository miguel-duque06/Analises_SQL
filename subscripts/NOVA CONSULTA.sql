SELECT * FROM pedidos;
SELECT * FROM itens_pedido;

SELECT p.ID, c.Nome, p.DataHoraPedido, SUM(ip.PrecoUnitario) AS ValorTotalPedido
FROM clientes c
JOIN pedidos p ON c.ID = p.IDCliente
JOIN itens_pedido ip ON p.ID = ip.IDPedido
GROUP BY p.ID, c.Nome