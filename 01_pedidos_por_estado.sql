SELECT clientes.customer_state AS 'estado', COUNT(pedidos.order_id) AS 'pedidos'
FROM clientes
JOIN pedidos
ON pedidos.customer_id = clientes.customer_id
GROUP BY estado
ORDER BY pedidos DESC;

