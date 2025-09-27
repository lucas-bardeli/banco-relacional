
-- Conceder todos os privilégios em todos os bancos
GRANT ALL PRIVILEGES ON *.* TO 'nome_usuario'@'host';

-- Conceder privilégios específicos em um banco
GRANT SELECT, INSERT, UPDATE ON banco_de_dados.* TO 'nome_usuario'@'host';

-- Conceder privilégios em uma tabela específica
GRANT SELECT, UPDATE ON banco_de_dados.tabela TO 'nome_usuario'@'host';

-- Conceder privilégio apenas para criar bancos de dados
GRANT CREATE ON *.* TO 'nome_usuario'@'host';

-- Aplicar as permissões
FLUSH PRIVILEGES;

-- Verificar permissões de um usuário
SHOW GRANTS FOR 'nome_usuario'@'host';