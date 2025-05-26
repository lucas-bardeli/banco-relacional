
# Inserindo dados nas tabelas
# DML - Data Manipulation Language

# INSERT
INSERT 
INTO cliente (cli_cpf,cli_nome,cli_rua,cli_numero,cli_bairro,cli_telefone) 
VALUES ("11111111111","Lucas Bardeli","Rua Tal",123,"Nova Europa","14999999998"); 

INSERT 
INTO cliente (cli_cpf,cli_nome,cli_rua,cli_numero,cli_bairro,cli_telefone) 
VALUES ("22111111111","Euller","Rua Tal",123,"Nova Europa","14999999999");

INSERT 
INTO cliente (cli_cpf,cli_nome,cli_rua,cli_numero,cli_bairro,cli_telefone) 
VALUES ("32111711111","Alberto","Rua Tal",123,"Nova Europa","14999999999");

# Inserindo dados passando o código de cada categoria
INSERT INTO categoria (cat_codigo,cat_nome) VALUES (2,"Camisa");

# Inserindo dados sem o código, quando a chave primária é AUTO_INCREMENT
INSERT INTO categoria (cat_nome) VALUES ("Camiseta");
INSERT INTO categoria (cat_nome) VALUES ("Bermuda"); # <- Vai dar erro se executar isso
INSERT INTO categoria (cat_nome) VALUES ("bermuda"); # <- depois isso, pois é case sensitive, o nome é UNIQUE
INSERT INTO categoria (cat_nome) VALUES ("Tenis");
INSERT INTO categoria (cat_nome) VALUES ("Jaqueta");

# Inserindo dados na tabela produto
INSERT INTO produto (prod_nome,fk_prod_categoria,prod_preco)
VALUES ("Bermuda X",3,50.00);

INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco)
VALUES ("Meia X",4,10.00); # <- Erro

INSERT INTO produto (prod_nome,fk_prod_categoria,prod_preco)
VALUES ("Jaqueta X",4,50.00); # <- Erro

INSERT INTO produto (prod_nome,fk_prod_categoria,prod_preco)
VALUES ("Tenis X",3,50.00); # <- Criou um Tênis como uma bermuda, o banco permite, mas depende do usuário controlar isso

INSERT INTO produto (prod_nome,fk_prod_categoria,prod_preco)
VALUES ("Teste",3,100.00);

INSERT INTO produto (prod_nome,prod_preco)
VALUES ("Teste nulo",100.00); # Categoria nula

INSERT INTO produto (prod_nome,fk_prod_categoria,prod_preco,prod_obs)
VALUES ("TesteOBS",1,110,"Teste observações");

# Inserindo dados na tabela pedido
INSERT INTO pedido (ped_data, fk_ped_cliente)
VALUES ("2025-05-19","1"); # <- Não existe cliente 1

INSERT INTO pedido (ped_data, fk_ped_cliente)
VALUES ("2025-05-19","32111711111");

# Inserindo dados na tabela pedido_produto
INSERT INTO pedido_produto (fk_pedido, fk_produto)
VALUES (2,1);