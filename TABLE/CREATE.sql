
-- O comando CREATE TABLE permite criar uma nova tabela especificando seu nome, colunas, tipos de dados e restrições.

-- Sintaxe básica:
CREATE TABLE IF NOT EXISTS nome_tabela (
  coluna1 tipo_dados [restrições],
  coluna2 tipo_dados [restrições],
  ...
  [restrições_da_tabela]

  -- Cria uma chave primária composta
  PRIMARY KEY (coluna1, coluna2),

  -- Adicionar um relacionamento na criação da tabela.
  FOREIGN KEY (nome_fk) REFERENCES nome_tabela_referenciada (nome_coluna)
);

IF NOT EXISTS --> Para evitar erros quando executar scripts múltiplas vezes.

-- Descreve a tabela mostrando seu dados de criação
DESCRIBE nome_tabela;