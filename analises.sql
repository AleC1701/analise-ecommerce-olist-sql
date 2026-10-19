-- PROJETO OLIST | CONSULTAS SQL
-- Banco: MySQL
-- Tabelas locais: clientes, pedidos, itens_pedido, produtos, pagamentos, avaliacoes
-- Fonte: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

-- 01. Pedidos por estado
SELECT clientes.customer_state AS 'estado',
       COUNT(pedidos.order_id) AS 'pedidos'
FROM clientes
JOIN pedidos
  ON pedidos.customer_id = clientes.customer_id
GROUP BY estado
ORDER BY pedidos DESC;

-- 02. Evolução mensal do valor dos itens
SELECT DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m') AS 'data_pedido',
       SUM(itens_pedido.price) AS 'preco'
FROM pedidos
JOIN itens_pedido
  ON pedidos.order_id = itens_pedido.order_id
WHERE pedidos.order_status NOT IN ('canceled', 'unavailable')
GROUP BY DATE_FORMAT(pedidos.order_purchase_timestamp, '%Y-%m')
ORDER BY data_pedido ASC;

-- Consultas auxiliares da análise temporal
SELECT order_status, COUNT(*)
FROM pedidos
GROUP BY order_status;

SELECT MIN(order_purchase_timestamp) AS primeira_compra,
       MAX(order_purchase_timestamp) AS ultima_compra
FROM pedidos;

-- 03. Categorias por valor vendido
SELECT produtos.product_category_name,
       SUM(itens_pedido.price) AS 'receita'
FROM produtos
JOIN itens_pedido
  ON produtos.product_id = itens_pedido.product_id
JOIN pedidos
  ON itens_pedido.order_id = pedidos.order_id
WHERE pedidos.order_status NOT IN ('canceled', 'unavailable')
GROUP BY produtos.product_category_name
ORDER BY receita DESC
LIMIT 10;

-- 04. Produtos mais frequentes
SELECT itens_pedido.product_id,
       COUNT(*) AS 'quantidade_vendida'
FROM itens_pedido
GROUP BY itens_pedido.product_id
ORDER BY quantidade_vendida DESC
LIMIT 10;

-- 05. Vendedores por valor vendido
SELECT seller_id,
       SUM(price) AS 'total_vendas'
FROM itens_pedido
GROUP BY seller_id
ORDER BY total_vendas DESC
LIMIT 10;

-- 06. Formas de pagamento
SELECT payment_type AS 'formas_pagamento',
       COUNT(payment_type) AS 'quantidade'
FROM pagamentos
GROUP BY payment_type
ORDER BY quantidade DESC;

-- 07. Avaliações dos clientes
SELECT review_score,
       COUNT(review_score) AS 'quantidade'
FROM avaliacoes
GROUP BY review_score
ORDER BY review_score DESC;

-- 08. Desempenho por estado (entregues)
SELECT clientes.customer_state AS 'estado',
       COUNT(*) AS 'quantidade_itens',
       SUM(itens_pedido.price) AS 'total_vendas',
       AVG(itens_pedido.price) AS 'preco_medio_item'
FROM clientes
JOIN pedidos
  ON clientes.customer_id = pedidos.customer_id
JOIN itens_pedido
  ON pedidos.order_id = itens_pedido.order_id
WHERE pedidos.order_status = 'delivered'
GROUP BY clientes.customer_state
HAVING COUNT(*) > 1000
ORDER BY total_vendas DESC
LIMIT 10;
