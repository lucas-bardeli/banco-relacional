
-- Comando SELECT, o R (Read) do CRUD

-- Selecionar todos os registros da tabela
SELECT * FROM nome_tabela;

-- Seleciona todos os registros, mas somente alguns atributos
SELECT coluna1, coluna2, coluna3
FROM nome_tabela;

-- A função COUNT() retorna o número de linhas que correspondem a um critério especificado
SELECT COUNT(*) FROM nome_tabela;

-- O comando AS é usado para renomear uma coluna ou tabela com um apelido
-- O apelido só existe enquanto durar a consulta
SELECT coluna1 AS 'Apelido 1',
coluna2 AS 'Apelido 2',
coluna3 AS 'Apelido 3'
FROM nome_tabela;

-- O operador IN ou NOT IN permite que você especifique vários valores em uma cláusula WHERE
SELECT * FROM nome_tabela
WHERE coluna IN (valor1, valor2, ... );

-- ORDER BY serve para ordenar o resultado por algum atributo
SELECT coluna1, coluna2
FROM nome_tabela
ORDER BY coluna2;

-- ASC deixa de forma crescente
SELECT coluna1, coluna2
FROM nome_tabela
ORDER BY coluna2 ASC;

-- DESC deixa de forma decrescente
SELECT coluna1, coluna2
FROM nome_tabela
ORDER BY coluna2 DESC;