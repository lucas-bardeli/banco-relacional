
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