
-- Adicionar uma coluna:
ALTER TABLE nome_tabela
ADD COLUMN nome_coluna tipo_dados [restrições];

-- Troca o nome de uma coluna:
ALTER TABLE nome_tabela
CHANGE COLUMN nome_antigo nome_novo tipo_dados [restrições];

-- Modificar uma coluna:
ALTER TABLE nome_tabela
MODIFY COLUMN nome_coluna novo_tipo_dados [novas_restrições];

-- Remover uma coluna:
ALTER TABLE nome_tabela
DROP COLUMN nome_coluna;

-- Adicionar uma restrição:
ALTER TABLE nome_tabela
ADD CONSTRAINT nome_restricao tipo_restricao (coluna);

-- Adicionar um relacionamento depois que a tabela foi criada.
ALTER TABLE nome_tabela
ADD CONSTRAINT nome_fk
FOREIGN KEY (nome_coluna)
REFERENCES nome_tabela_referenciada (nome_coluna);

-- Renomeando tabelas:
-- Sintaxe 1:
RENAME TABLE nome_antigo TO nome_novo;

-- Sintaxe 2:
ALTER TABLE nome_antigo RENAME TO nome_novo;