-- Conectar como root no terminal:
-- mysql -u root -p
-- -u: especifica o nome do usuário
-- -p: solicita a senha
-- -h: especifica o host
-- -P: especifica a porta

-- Exemplo completo:
-- mysql -u root -p -h 127.0.0.1 -P 3306

-- Mostrar todos os usuários
SELECT user, host FROM mysql.user;

-- Criando Usuários:
-- Sintaxe básica
CREATE USER 'nome_usuario'@'host' IDENTIFIED BY 'senha';

-- Exemplos práticos
-- Criar usuário que pode conectar de qualquer lugar
CREATE USER 'developer'@'%' IDENTIFIED BY 'senha_segura123';

-- Criar usuário que só pode conectar da máquina local
CREATE USER 'local_app'@'localhost' IDENTIFIED BY 'outra_senha_segura';

-- Criar usuário que só pode conectar de um IP específico
CREATE USER 'remote_app'@'192.168.1.10' IDENTIFIED BY 'senha_remota';

-- Modificando Usuários:
-- Alterar senha (MySQL 5.7+)
ALTER USER 'nome_usuario'@'host' IDENTIFIED BY 'nova_senha';

-- Método alternativo para versões mais antigas
SET PASSWORD FOR 'nome_usuario'@'host' = PASSWORD('nova_senha');