-- Tipos de dados no MySQL 8.0

-- Numéricos:
TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
UNSIGNED --> pode ser usado com tipos numéricos para duplicar o limite superior

-- DECIMAL(Total de dígitos, qtd casas decimais)
DECIMAL(10, 2) --> 99999999.99

-- De texto (string):
CHAR(), VARCHAR(), TEXT

-- De tempo (data e hora):
DATE --> 'YYYY-MM-DD'
TIME --> 'HH:MM:SS'
DATETIME --> 'YYYY-MM-DD HH:MM:SS'
TIMESTAMP --> 'YYYY-MM-DD HH:MM:SS'

BOOLEAN --> Convertido para TINYINT(1) internamente

-- ENUM por padrão é NOT NULL e não aceita vazio ""
--      0        1        2        3
ENUM('opcao1','opcao2','opcao3','opcao4', ... );

-- SET exclusivo do MySQL.
-- Não utilizamos porque ele é outra tabela N:N.
-- Permite NULL e a seleção de várias opções.
SET('opcao1','opcao2','opcao3','opcao4', ... );

-- Restrições (Constraints):
NOT NULL --> A coluna não pode ter valores nulos
PRIMARY KEY --> Identifica unicamente cada registro
FOREIGN KEY --> Estabelece relacionamento entre tabelas
UNIQUE --> Garante que não há valores duplicados
CHECK --> Valida os dados conforme uma condição (suportado no MySQL 8.0+)
DEFAULT --> Define um valor padrão
AUTO_INCREMENT --> Incrementa automaticamente o valor (específico do MySQL)