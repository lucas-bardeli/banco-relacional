
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

-- Inserção de 20 clientes na tabela cliente
INSERT INTO cliente (cli_cpf, cli_nome, cli_rua, cli_numero, cli_bairro, cli_telefone) VALUES
('12345678901', 'Ana Paula Ferreira', 'Rua das Flores', 123, 'Centro', '11987654321'),
('23456789012', 'Bruno Henrique Souza', 'Avenida Brasil', 456, 'Jardim América', '11976543210'),
('34567890123', 'Carla Mendes Lima', 'Rua das Acácias', 78, 'Vila Nova', '11965432109'),
('45678901234', 'Diego Costa Silva', 'Rua do Comércio', 89, 'Centro', '11954321098'),
('56789012345', 'Eduarda Rocha', 'Rua Rio Branco', 321, 'Boa Vista', '11943210987'),
('67890123456', 'Felipe Andrade', 'Rua Amazonas', 55, 'Jardim das Rosas', '11932109876'),
('78901234567', 'Gabriela Martins', 'Rua Pará', 88, 'Bela Vista', '11921098765'),
('89012345678', 'Henrique Lima', 'Rua São Paulo', 90, 'Vila Rica', '11910987654'),
('90123456789', 'Isabela Nunes', 'Rua das Palmeiras', 100, 'Centro', '11899876543'),
('01234567890', 'João Pedro Souza', 'Avenida Central', 200, 'Jardim Europa', '11888765432'),
('11223344556', 'Karen Oliveira', 'Rua do Sol', 45, 'Parque Verde', '11877654321'),
('22334455667', 'Lucas Mendes', 'Rua das Laranjeiras', 67, 'Santa Tereza', '11866543210'),
('33445566778', 'Mariana Costa', 'Rua das Violetas', 89, 'Centro', '11855432109'),
('44556677889', 'Nelson Silva', 'Rua XV de Novembro', 10, 'Bairro Alto', '11844321098'),
('55667788990', 'Otávio Pereira', 'Rua João Pessoa', 34, 'Jardim Alegre', '11833210987'),
('66778899001', 'Patrícia Lima', 'Rua Santos Dumont', 76, 'Centro', '11822109876'),
('77889900112', 'Rafael Gonçalves', 'Rua das Oliveiras', 98, 'Vila Esperança', '11811098765'),
('88990011223', 'Sandra Regina', 'Rua Bela Vista', 120, 'Jardim São Paulo', '11799987654'),
('99001122334', 'Tiago Alves', 'Rua da Independência', 150, 'Centro', '11788876543'),
('10111213141', 'Vanessa Duarte', 'Rua da Paz', 65, 'Nova Esperança', '11777765432');

-- Inserção de 10 categorias de roupas na tabela categoria
INSERT INTO categoria (cat_nome) VALUES 
('Camisetas'),('Calças'),('Vestidos'),('Saias'),('Jaquetas'),
('Blusas'),('Shorts'),('Macacões'),('Roupas Íntimas'),('Moda Praia');

-- Inserção de 20 produtos na tabela produto, vinculando cada um a uma das 10 categorias existentes
INSERT INTO produto (prod_nome, fk_prod_categoria, prod_preco) VALUES 
('Camiseta Básica Branca', 1, 29.90),('Camiseta Estampada Azul', 1, 39.90),
('Calça Jeans Slim', 2, 89.90),('Calça Moletom Cinza', 2, 59.90),
('Vestido Floral Curto', 3, 79.90),('Vestido Longo de Festa', 3, 149.90),
('Saia Jeans', 4, 49.90),('Saia Longa Estampada', 4, 59.90),
('Jaqueta Jeans', 5, 119.90),('Jaqueta Corta Vento', 5, 139.90),
('Blusa de Tricô', 6, 69.90),('Blusa Canelada', 6, 39.90),
('Shorts Jeans', 7, 49.90),('Shorts de Moletom', 7, 39.90),
('Macacão Jeans Feminino', 8, 129.90),('Macacão Social Masculino', 8, 159.90),
('Sutiã Renda Preto', 9, 34.90),('Cueca Boxer Algodão', 9, 19.90),
('Biquíni Cortininha', 10, 54.90),('Sunga Estampada', 10, 44.90);

-- Inserção de 20 pedidos na tabela pedido
-- Cada pedido está vinculado a um cliente existente via o CPF
INSERT INTO pedido (ped_data, fk_ped_cliente) VALUES 
('2025-05-01', '12345678901'),('2025-05-02', '23456789012'),('2025-05-03', '34567890123'),('2025-05-04', '45678901234'),
('2025-05-05', '56789012345'),('2025-05-06', '67890123456'),('2025-05-07', '78901234567'),('2025-05-08', '89012345678'),
('2025-05-09', '90123456789'),('2025-05-10', '01234567890'),('2025-05-11', '11223344556'),('2025-05-12', '22334455667'),
('2025-05-13', '33445566778'),('2025-05-14', '44556677889'),('2025-05-15', '55667788990'),('2025-05-16', '66778899001'),
('2025-05-17', '77889900112'),('2025-05-18', '88990011223'),('2025-05-19', '99001122334'),('2025-05-20', '10111213141');

-- Inserção de 20 registros na tabela pedido_produto, com nome do cliente incluído
INSERT INTO pedido_produto (fk_pedido, fk_produto, cli_nome) VALUES
(1, 1, 'Ana Paula Ferreira'),(1, 5, 'Ana Paula Ferreira'),(2, 2, 'Bruno Henrique Souza'),(2, 6, 'Bruno Henrique Souza'),
(3, 3, 'Carla Mendes Lima'),(4, 4, 'Diego Costa Silva'),(5, 7, 'Eduarda Rocha'),(6, 8, 'Felipe Andrade'),
(7, 9, 'Gabriela Martins'),(8, 10, 'Henrique Lima'),(9, 11, 'Isabela Nunes'),(10, 12, 'João Pedro Souza'),
(11, 13, 'Karen Oliveira'),(12, 14, 'Lucas Mendes'),(13, 15, 'Mariana Costa'),(14, 16, 'Nelson Silva'),
(15, 17, 'Otávio Pereira'),(16, 18, 'Patrícia Lima'),(17, 19, 'Rafael Gonçalves'),(18, 20, 'Sandra Regina');
