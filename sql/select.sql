
# Selecionando dados das tabelas
# * -> todos os dados
SELECT * FROM cliente;
SELECT * FROM categoria;

SELECT cli_cpf, cli_nome, cli_telefone 
FROM cliente; # Alguns atributos

SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_nome;

SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_cpf;

SELECT cli_cpf, cli_nome 
FROM cliente 
ORDER BY cli_cpf ASC; # Ordem crescente

SELECT cli_cpf, cli_nome 
FROM cliente
ORDER BY cli_cpf DESC; # Ordem decrescente

SELECT cli_cpf, cli_nome 
FROM cliente WHERE cli_nome = "Euller";

SELECT cli_cpf, cli_nome 
FROM cliente WHERE cli_nome LIKE "%Eul%";