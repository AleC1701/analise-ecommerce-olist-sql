SELECT itens_pedido.product_id, COUNT(*) AS 'quantidade_vendida'
FROM itens_pedido
GROUP BY itens_pedido.product_id
ORDER BY quantidade_vendida DESC
LIMIT 10;

SELECT * FROM produtos;