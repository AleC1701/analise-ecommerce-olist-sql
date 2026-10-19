SELECT seller_id, SUM(price) AS 'pedidos'
FROM itens_pedido
GROUP BY seller_id
ORDER BY pedidos DESC
LIMIT 10;