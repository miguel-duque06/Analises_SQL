SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT * FROM produtos;
SELECT * FROM itens_pedido;

--USANDO INNER JOIN
SELECT c.Nome, p.ID, p.DataHoraPedido 
FROM clientes c
INNER JOIN pedidos p 
ON c.ID = p.IDCliente;

SELECT * FROM pedidos;

--USANDO RIGHT JOIN
SELECT pr.Nome, ip.IDProduto, ip.IDPedido
FROM itens_pedido ip
RIGHT JOIN produtos pr
ON pr.ID = ip.IDProduto; 

SELECT pr.Nome, x.IDPedido, x.IDProduto  
FROM(				
    SELECT ip.IDPedido, ip.IDProduto
    FROM pedidos p
    JOIN itens_pedido ip 
    ON p.ID = ip.IDPedido
    WHERE strftime('%m', p.DataHoraPedido) = '10') x
RIGHT JOIN produtos pr
ON pr.ID =  x.IDProduto;

--USANDO LEFT JOIN
SELECT c.Nome, p.ID
FROM clientes c 
LEFT JOIN Pedidos p 
ON c.ID = p.IDCliente;

SELECT c.Nome, p.ID
FROM clientes c 
LEFT JOIN pedidos P
ON c.ID = p.IDCliente
WHERE strftime('%m', p.DataHoraPedido) = '10';

SELECT c.Nome, x.ID
FROM clientes c 
LEFT JOIN
(
    SELECT p.ID, p.IDCliente 
    FROM pedidos p 
    WHERE strftime('%m', p.DataHoraPedido) = '10')x
ON c.id = x.IDCliente
WHERE x.IDCliente IS NULL;

--FULL JOIN
SELECT c.nome, p.id 
FROM clientes c
FULL JOIN pedidos p
ON c.id = p.idcliente;