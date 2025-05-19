
# Selecionando dados das tabelas
# * -> todos os dados
SELECT * FROM cliente;
SELECT * FROM categoria;
SELECT * FROM produto;
SELECT * FROM pedido;
SELECT * FROM pedido_produto;

# Seleciona todos os clientes, mas somente os atributos cpf, nome e telefone
SELECT cli_cpf, cli_nome, cli_telefone 
FROM cliente;

# Somente cpf e nome, ordenando pelo atributo cli_nome
SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_nome;

# Somente cpf e nome, ordenando pelo atributo cli_cpf
SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_cpf;

# Ordenando pelo atributo cli_cpf de forma crescente
SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_cpf ASC;

# Ordenando pelo atributo cli_cpf de forma decrescente
SELECT cli_cpf, cli_nome 
FROM cliente
ORDER BY cli_cpf DESC;

# Extras
SELECT cli_cpf, cli_nome 
FROM cliente WHERE cli_nome = "Euller";

SELECT cli_cpf, cli_nome 
FROM cliente WHERE cli_nome LIKE "%Eul%";