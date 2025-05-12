
# inserindo dados nas tabelas
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

INSERT INTO categoria (cat_codigo,cat_nome) VALUES (2,"Camisa");
INSERT INTO categoria (cat_nome) VALUES ("Camiseta");
INSERT INTO categoria (cat_nome) VALUES ("Bermuda");
INSERT INTO categoria (cat_nome) VALUES ("bermuda");
INSERT INTO categoria (cat_nome) VALUES ("Tenis");