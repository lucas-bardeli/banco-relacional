
-- Criar um novo banco de dados
CREATE DATABASE nome_do_banco;

-- Criar um banco se ele não existir (evita erros)
CREATE DATABASE IF NOT EXISTS nome_do_banco;

-- Criar um banco com conjunto de caracteres específico
CREATE DATABASE nome_do_banco CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Alterar o conjunto de caracteres de um banco
ALTER DATABASE nome_do_banco CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Excluir um banco de dados (CUIDADO! Isso exclui todos os dados)
DROP DATABASE nome_do_banco;

-- Excluir apenas se existir (evita erros)
DROP DATABASE IF EXISTS nome_do_banco;