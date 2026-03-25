SELECT * FROM pedidos;
SELECT * FROM clientes;
SELECT * FROM produtos;

SELECT nome,telefone 
FROM clientes
WHERE ID = (
  SELECT idcliente
  FROM pedidos
  WHERE datahorapedido = '2023-01-02 08:15:00'
);

--USANDO O IN
SELECT nome
FROM clientes
WHERE id IN (SELECT idcliente 
             FROM pedidos 
             WHERE strftime('%m', datahorapedido) = '01'
);

--USANDO O HAVING
SELECT nome,preco
FROM produtos
GROUP BY nome, preco
HAVING preco > (
  SELECT AVG(preco)
  FROM produtos
);