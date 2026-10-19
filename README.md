# analise-ecommerce-olist-sql

Projeto de portfólio em Análise de Dados, desenvolvido com MySQL a partir da base pública Brazilian E-Commerce Public Dataset by Olist. O objetivo foi explorar o comportamento dos pedidos e identificar padrões de vendas, produtos, pagamentos e avaliações usando SQL.
Ferramentas e técnicas
MySQL · MySQL Workbench · SQL — JOIN, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT, COUNT, SUM, AVG e DATE_FORMAT.

Foram utilizadas as tabelas clientes, pedidos, itens_pedido, produtos, pagamentos e avaliacoes, com nomes adaptados para português no banco local.
Perguntas investigadas
#	Análise	O que busquei descobrir
01	Pedidos por estado	Onde se concentra a demanda?
02	Evolução mensal	Como o valor dos itens vendidos variou no tempo?
03	Categorias	Quais categorias movimentaram mais valor?
04	Produtos	Quais produtos apareceram mais vezes nos pedidos?
05	Vendedores	Quais vendedores movimentaram mais valor?
06	Pagamentos	Qual forma de pagamento foi mais frequente?
07	Avaliações	Como se distribuem as notas dos clientes?
08	Desempenho por estado	Quais estados lideraram em itens, valor e preço médio?
<img width="582" height="549" alt="image" src="https://github.com/user-attachments/assets/a91fcfec-cd10-4d43-a1c5-303721e9faeb" />

Principais resultados
Análise	Resultado encontrado
Pedidos por estado	São Paulo liderou com 41.746 pedidos, cerca de 42% dos 99.441 pedidos contados. SP, RJ e MG concentraram 66,6%.
Evolução mensal	Novembro de 2017 teve o maior valor mensal de itens: R$ 1.003.862,14.
Categorias	Beleza e saúde liderou com R$ 1.255.695,13, seguida por relógios e presentes (R$ 1.198.185,21).
Produtos	O produto aca2eb7d00ea1a7b8ebd4e68314663af apareceu em 527 registros de itens de pedido.
Vendedores	O vendedor 4869f7a5dfa277a7dca6462dcf3b52b2 liderou com R$ 229.472,63 em valor de itens.
Pagamentos	Cartão de crédito foi a forma mais frequente: 76.795 registros (73,9%).
Avaliações	77,1% das avaliações receberam 4 ou 5 estrelas (76.470 de 99.224).
Desempenho por estado	Entre pedidos entregues, SP somou 46.448 itens e R$ 5.067.633,16; BA teve o maior preço médio por item entre os dez estados exibidos (R$ 134,02).


Conclusão e Aprendizados

A análise identificou uma forte concentração de pedidos em São Paulo, destaque da categoria de beleza e saúde nas vendas, predominância do cartão de crédito e maioria de avaliações positivas.

Os resultados consideram diferentes filtros e indicadores, como quantidade de pedidos, valor dos produtos e preço médio por item.

O projeto permitiu aplicar conhecimentos de SQL, JOIN, GROUP BY, funções de agregação e filtros, além de desenvolver habilidades de interpretação de dados para responder perguntas de negócio.
