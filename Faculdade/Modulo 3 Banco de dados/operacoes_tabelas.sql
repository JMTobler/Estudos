/*Excluindo tabelas*/
DROP TABLE item_pedido;

/*Alterando tabelas*/
ALTER TABLE cliente -- Excluindo a coluna email
	DROP email;

ALTER TABLE cliente -- adicionando novamente a coluna email
	ADD email VARCHAR(60) NOT NULL;

ALTER TABLE cliente -- adicionando uma nova coluna
	ADD tipo CHAR(1) NOT NULL,
	ADD CONSTRAINT ck_tipo CHECK (tipo in ('F','J'));


ALTER TABLE cliente -- retirando a restrição de preenchimento obrigatório
	ALTER COLUMN email DROP NOT NULL;

ALTER TABLE cliente --definindo novamente como mandatório o preenchimento
	ALTER COLUMN email SET NOT NULL;

ALTER TABLE produto -- alterando o tamanho da coluna descrição
	ALTER COLUMN descricao TYPE VARCHAR(50);
	
ALTER TABLE pedido_compra -- definindo um valor default, caso seja omitido
	ALTER COLUMN data_pedido SET DEFAULT CURRENT_DATE;

ALTER TABLE pedido_compra -- retirando esse valor default
ALTER COLUMN data_pedido DROP DEFAULT;