SELECT produtos.product_category_name, SUM(itens_pedido.price) AS 'receita'
FROM produtos
JOIN itens_pedido
ON produtos.product_id = itens_pedido.product_id
JOIN pedidos
ON itens_pedido.order_id = pedidos.order_id
WHERE order_status NOT IN ('canceled', 'unavailable')

GROUP BY produtos.product_category_name
ORDER BY receita DESC
LIMIT 10;