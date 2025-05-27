
# CRIANDO TABELAS

# CRIANDO A TABELA CLIENTE
CREATE TABLE cliente (
	cli_cpf VARCHAR(11) PRIMARY KEY,
	cli_nome VARCHAR(255) NOT NULL,
	cli_rua VARCHAR(255) NOT NULL,
	cli_numero INT NOT NULL,
	cli_bairro VARCHAR(255) NOT NULL,
	cli_telefone VARCHAR(11) NOT NULL
);

# CRIANDO A TABELA CATEGORIA
# CHAVE PRIMÁRIA, AUTO INCREMENTE OS VALORES
# NOME DA CATEGORIA É UNICO, NÃO DEIXA DUPLICAR NOME DE CATEGORIA
CREATE TABLE categoria (
	cat_codigo INT PRIMARY KEY AUTO_INCREMENT,
	cat_nome VARCHAR(255) NOT NULL UNIQUE
);

# CRIANDO A TABELA PRODUTO 
CREATE TABLE produto (
	prod_codigo INT PRIMARY KEY AUTO_INCREMENT,
	prod_nome VARCHAR(255) NOT NULL, 
	fk_prod_categoria INT NOT NULL,
	prod_preco DECIMAL(5,2) NOT NULL
);

# CRIANDO A TABELA PEDIDO 
CREATE TABLE pedido (
	ped_numero INT PRIMARY KEY AUTO_INCREMENT,
	ped_data DATE NOT NULL,
	fk_ped_cliente VARCHAR(11) NOT NULL
);

# CRIANDO A TABELA PEDIDO_PRODUTO 
CREATE TABLE pedido_produto (
	fk_pedido INT NOT NULL,
	fk_produto INT NOT NULL
);

# CRIANDO TABELA MARCA
CREATE TABLE marca (
	mar_codigo INT PRIMARY KEY AUTO_INCREMENT,
	mar_nome VARCHAR(255) NOT NULL UNIQUE
);

# CRIANDO TABELA TAMANHO
CREATE TABLE tamanho (
	tam_codigo INT PRIMARY KEY AUTO_INCREMENT,
	tam_nome VARCHAR(255) NOT NULL UNIQUE
);

/*####################################################################################### 

                                  Chave Extrangeira
  Para os atributos Chave extrangeira, adiciona-los como Restrição de chave extrangeira

########################################################################################*/

ALTER TABLE produto 
ADD CONSTRAINT fk_marca 
FOREIGN KEY (fk_mar_codigo) 
REFERENCES marca(mar_codigo);

ALTER TABLE produto 
ADD CONSTRAINT fk_tamanho 
FOREIGN KEY (fk_tam_codigo) 
REFERENCES tamanho(tam_codigo);

ALTER TABLE produto 
ADD CONSTRAINT fk_categoria 
FOREIGN KEY (fk_prod_categoria) 
REFERENCES categoria(cat_codigo);

ALTER TABLE pedido 
ADD CONSTRAINT fk_cliente 
FOREIGN KEY (fk_ped_cliente) 
REFERENCES cliente(cli_cpf);

ALTER TABLE pedido_produto 
ADD CONSTRAINT fk_pedido 
FOREIGN KEY (fk_pedido) 
REFERENCES pedido(ped_numero);

ALTER TABLE pedido_produto 
ADD CONSTRAINT fk_produto
FOREIGN KEY (fk_produto) 
REFERENCES produto(prod_codigo);

/*####################################################################################### 

                               Modificando Atributos já criados
     Utilização do MODIFY com ALTER TABLE para modificar características de Atributos
     
########################################################################################*/

# MODIFICANDO O ATRIBUTO fk_prod_categoria
ALTER TABLE produto MODIFY fk_prod_categoria INT NOT NULL;

ALTER TABLE produto MODIFY prod_nome VARCHAR(255) NOT NULL;

# TESTE DE INTEGRIDADE, ALTERANDO prod_preco
ALTER TABLE produto MODIFY prod_preco DECIMAL(1,2) NOT NULL;

/*####################################################################################### 

                               Adicionando novo Atributo
                     Adicionando um novo atributo a uma tabela
                     
########################################################################################*/

ALTER TABLE produto ADD prod_obs VARCHAR(255) NULL;
ALTER TABLE produto ADD fk_tam_codigo INT NOT NULL;
ALTER TABLE produto ADD fk_mar_codigo INT NOT NULL;

ALTER TABLE produto DROP COLUMN fk_tam_codigo;
ALTER TABLE produto DROP COLUMN fk_mar_codigo;

ALTER TABLE pedido ADD ped_obs VARCHAR(255) NULL;
ALTER TABLE pedido ADD ped_status TINYINT(1) NOT NULL;

ALTER TABLE pedido_produto ADD cli_nome VARCHAR(255) NOT NULL;

/*####################################################################################### 

                               Removendo um Atributo
                      Removendo um Atributo de uma tabela
                      
########################################################################################*/

ALTER TABLE pedido_produto DROP COLUMN nome_cliente;
ALTER TABLE pedido DROP COLUMN ped_status;
