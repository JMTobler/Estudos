/* Operaçoes com SELECT */
-- Todos dados da tabela Cliente:
SELECT * FROM cliente;

-- Apenas nome e e-mail dos clientes:
SELECT nome, email FROM cliente;

-- nome e e-mail dos Clientes pessoas físicas (F):
SELECT nome, email FROM cliente WHERE tipo = 'F';

-- Todos os Produtos de alto custo com grande estoque:
SELECT * FROM produto WHERE preco_venda > 1000 AND qtde_estoque > 10;

-- Produtos em uma faixa de preço:
SELECT * FROM produto WHERE preco_venda BETWEEN 500 and 1000;

-- Produtos cuja descrição começa com um conjutno de caracteres:
SELECT * FROM produto WHERE descricao LIKE '%I7%';

-- Todos as colunas da tabela Produto acrescida de uma coluna "fictícia":
SELECT *, (preco_venda * 1.2) AS preco_reajustado FROM produto;

-- Todos os idclientes que realizaram pedidos:
SELECT idcliente FROM pedido_compra p ORDER BY idcliente;

-- Todos os idclientes que realizaram pedidos (sem repetição):
SELECT DISTINCT idcliente FROM pedido_compra p ORDER BY idcliente;

/* Operaçoes com UPDATE */
-- Alterar os preços da tabela PRODUTO aumentando-os em 20%:
UPDATE produto SET preco_venda = (preco_venda * 1.2);

-- Alterar nome e e-mail de um cliente (idcliente = 10):
UPDATE cliente SET 
	nome = 'PaesPaes & Sonhos Padaria e Confeitaria',
	email = 'falecomigo@paesesonhos.com.br'
WHERE idcliente = 10;