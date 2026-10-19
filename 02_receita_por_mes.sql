SELECT DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m') AS 'data_pedido', SUM(itens_pedido.price) AS 'preco'
FROM pedidos
JOIN itens_pedido
ON pedidos.order_id = itens_pedido.order_id
GROUP BY DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m')
ORDER BY data_pedido DESC;

SELECT order_status, COUNT(*) FROM pedidos GROUP BY order_status;

SELECT DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m') AS 'data_pedido', SUM(itens_pedido.price) AS 'preco'
FROM pedidos
JOIN itens_pedido
ON pedidos.order_id = itens_pedido.order_id
WHERE pedidos.order_status NOT IN ('canceled','unavailable')
GROUP BY DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m')
ORDER BY data_pedido ASC;

SELECT MIN(order_purchase_timestamp) AS primeira_compra,
       MAX(order_purchase_timestamp) AS ultima_compra
FROM pedidos;