
# UPDATE
# Atualizar registros de uma tabela

UPDATE produto 
SET fk_prod_categoria=2
WHERE prod_codigo=3;

UPDATE produto 
SET prod_preco=90
WHERE prod_codigo=1;

# Alterar o preço do produto Jaqueta X para 90
UPDATE produto 
SET prod_preco=90
WHERE prod_nome="Jaqueta X";

UPDATE produto SET prod_obs="Importado";
UPDATE produto SET prod_obs=NULL;
UPDATE produto SET prod_obs="Importado" WHERE prod_codigo=1;

# Apaga tudo de cliente!
DELETE FROM cliente;

# Deletou Vanessa Duarte:
DELETE FROM cliente WHERE cli_cpf=10111213141;

DELETE FROM produto WHERE fk_prod_categoria=1;
