SELECT clientes.customer_state AS 'estado',
COUNT(*) AS 'quantidade_itens',
SUM(itens_pedido.price) AS 'total_vendas',
AVG(itens_pedido.price) AS 'preco_medio_item'
FROM clientes
JOIN  pedidos
ON clientes.customer_id = pedidos.customer_id
JOIN itens_pedido
ON pedidos.order_id = itens_pedido.order_id
WHERE order_status = 'delivered'
GROUP BY clientes.customer_state
HAVING COUNT(*) > 1000
ORDER BY total_vendas DESC
LIMIT 10;