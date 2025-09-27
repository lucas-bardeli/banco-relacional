
-- Comando UPDATE, o U (Update) do CRUD
-- Atualiza registros de uma tabela

-- Cuidado! Sem WHERE modifica todos os registros
UPDATE nome_tabela SET coluna = valor;

UPDATE nome_tabela SET coluna = valor WHERE coluna2 = valor2;

-- Alterando vários campos ao mesmo tempo:
UPDATE nome_tabela
SET coluna1 = valor1, coluna2 = valor2
WHERE coluna3 = valor3;