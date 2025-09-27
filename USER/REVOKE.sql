
-- Revogar todos os privilégios
REVOKE ALL PRIVILEGES ON *.* FROM 'nome_usuario'@'host';

-- Revogar privilégios específicos
REVOKE INSERT, UPDATE ON banco_de_dados.* FROM 'nome_usuario'@'host';

-- Renomear usuário
RENAME USER 'nome_antigo'@'host' TO 'nome_novo'@'host';

-- Remover um usuário
DROP USER 'nome_usuario'@'host';

-- Esqueceu a senha do root:
UPDATE mysql.user SET authentication_string='' WHERE user='root';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'nova_senha';