/* inserindo dados na tabela CLIENTE*/
INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Maria da Graça Penna Burgos Costa',
	'graca.burgos@tudook.com',
	'86838400006',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Rita Lee Jones de Carvalho',
	'rita.carvalho84@eai.com.br',
	'08347177007',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Agenor de Miranda Araújo Neto',
	'genor.miranda.dentista@tudook.com',
	'10986428051',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Sebastião Rodrigues Maia',
	'tiao_maia@brwave.inf.net',
	'18622526020',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Ultra Rápida Transportadora e Logística',
	'sebastiao@praja.com.br',
	'86219546000153',
	'J'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Vitória Régia Segurança Predial',
	'compras@vrseg.com.br',
	'03682909000165',
	'J'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Cássia Rejane Eller',
	'crejane@gargula.com',
	'83608157042',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Raul Santos Seixas',
	'raulsantos@uhuu.net',
	'92862096067',
	'F'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Roupa Nova Modas',
	'paulo@rnmodas.com',
	'70160921000105',
	'J'
);

INSERT INTO cliente (nome, email, cpf_cnpj, tipo)
VALUES (
	'Padaria e Confeitaria Sonho Meu',
	'ivone@paesesonhos.com,br',
	'88085076000108',
	'J'
);

/* inserindo dados na tabela CATEGORIA*/
INSERT INTO categoria (descricao_categoria)
VALUES ('Notebooks');

INSERT INTO categoria (descricao_categoria)
VALUES ('Mobiles');

INSERT INTO categoria (descricao_categoria)
VALUES ('Acessórios');

INSERT INTO categoria (descricao_categoria)
VALUES ('Suprimentos');

/* inserindo dados na tabela PRODUTO*/
INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
	'Nobreak 3000VA',
	2500,
	15,
	3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
	'Nobreak 1200VA',
	900,
	24,
	3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
	'Nobreak 600VA',
	600,
	15,
	3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
	'Kit 12 refis tinta impressora bulk',
	180,
	15,
	4
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
	'Kit 4 refis tinta impressora bulk',
	70,
	55,
	4
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Notebook 14" Core I3',
    2300,
    5,
    1
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Notebook 15" Core I5',
    3200,
    11,
    1
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Notebook 15" Core I7',
    4300,
    9,
    1
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Notebook 15" Core I9',
    7500,
    3,
    1
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Toner Laserjet',
    50,
    40,
    4
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Monitor de 19"',
    400,
    13,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Monitor 21"',
    500,
    17,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Monitor curvo 34"',
    3200,
    5,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Notebok Gamer I7',
    6500,
    4,
    1
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Adaptador de cabo HDMI VGA',
    18,
    35,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Adaptador de cabo ethernet USB',
    30,
    15,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Teclado',
    19,
    47,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Mouse optico',
    32,
    63,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Mouse vertical',
    90,
    15,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Suporte notebook',
    35,
    18,
    3
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Tablet 10.4" 64GB',
    1200,
    13,
    2
);

INSERT INTO produto (descricao, preco_venda, qtde_estoque, idcategoria)
VALUES (
    'Tablet 12.4" 128GB',
    2400,
    12,
    2
);

/* inserindo dados na tabela FORMA DE PAGAMENTO */
INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('A Vista - PIX');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('A Vista - Cartão');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('Parcelado 2x');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('Parcelado 3x');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('Parcelado 4x');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('Parcelado 5x');

INSERT INTO forma_pagamento (descricao_forma_pagamento)
VALUES ('Parcelado 6x');

/* inserindo dados na tabela PEDIDO_COMPRA*/
INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-2', 2, 1);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-2', 7, 3);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-4', 5, 7);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-4', 3, 3);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-4', 7, 3);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-5', 2, 7);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-5', 7, 3);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-5', 3, 2);

INSERT INTO pedido_compra(data_pedido, idcliente, idforma_pagamento)
VALUES ( '2023-10-5', 9, 2);

/* inserindo dados na tabela ITEM_PEDIDO*/
INSERT INTO item_pedido VALUES
(1, 9, 1, 7450),
(1, 20, 1, 35),
(1, 18, 1, 32),
(1, 2, 1, 900),
(2, 10, 5, 50),
(3, 14, 1, 6550),
(3, 13, 1, 3200),
(4, 12, 2, 500),
(4, 15, 2, 18),
(4, 19, 2, 80),
(5, 14, 1, 6450),
(6, 5, 2, 70),
(7, 22, 2, 2400),
(8, 10, 7, 50),
(8, 2, 1, 90),
(9, 10, 4, 50);