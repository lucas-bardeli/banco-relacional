
-- Comando INSERT, o C (Create) do CRUD
-- Inserindo registros nas tabelas

-- Apenas um registro, pode ser com VALUE no singular também
INSERT INTO nome_tabela (coluna1, coluna2, coluna3, coluna4, ... ) 
VALUES (valor1, valor2, valor3, valor4, ... );

-- Múltiplos registros de uma vez:
-- Obrigatoriamente com VALUES no plural
INSERT INTO nome_tabela (coluna1, coluna2, coluna3, coluna4, ... ) VALUES
(valor1, valor2, valor3, valor4, ... ),
(valor1, valor2, valor3, valor4, ... ),
...