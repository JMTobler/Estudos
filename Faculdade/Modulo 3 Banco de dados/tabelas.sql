/* Criando as das tabelas */
CREATE TABLE cliente (
	idcliente SERIAL,
	nome VARCHAR(60) NOT NULL,
	email VARCHAR(60) NOT NULL,
	cpf_cnpj VARCHAR(14) NOT NULL,
	CONSTRAINT pk_cliente PRIMARY KEY (idcliente)
);

CREATE TABLE categoria (
	idcategoria SERIAL PRIMARY KEY,
	descricao_categoria VARCHAR(25) NOT NULL
);

CREATE TABLE produto (
	idproduto SERIAL PRIMARY KEY,
	descricao VARCHAR(25) NOT NULL,
	preco_venda NUMERIC(15, 2) NOT NULL,
	qtde_estoque INTEGER NOT NULL,
	idcategoria INTEGER NOT NULL,
	FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);

CREATE TABLE forma_pagamento (
	idforma_pagamento SERIAL PRIMARY KEY,
	descricao_forma_pagamento VARCHAR(25) NOT NULL
);

CREATE TABLE pedido_compra (
	idpedido SERIAL PRIMARY KEY,
	data_pedido DATE NOT NULL,
	idcliente INTEGER NOT NULL REFERENCES cliente,
	idforma_pagamento INTEGER NOT NULL
);

CREATE TABLE item_pedido (
	idpedido INTEGER NOT NULL REFERENCES pedido_compra,
	idproduto INTEGER NOT NULL REFERENCES produto,
	qtde_pedido NUMERIC (10,2) NOT NULL,
	preco_pedido NUMERIC (15,2) NOT NULL,
	PRIMARY KEY (idpedido,idproduto)
);