
-- Atenção: o DROP TABLE é irreversível!
-- Apaga a tabela inteira do banco (estrutura + dados).
DROP TABLE nome_tabela;
DROP TABLE IF EXISTS nome_tabela;

-- Remove todos os dados de uma tabela, mas mantém sua estrutura;
-- Muito mais rápido para limpar uma tabela inteira que DELETE sem WHERE;
-- Não pode ser usado com WHERE (remove tudo ou nada);
TRUNCATE TABLE nome_tabela;