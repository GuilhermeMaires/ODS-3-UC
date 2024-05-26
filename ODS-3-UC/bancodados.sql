-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sistema_medicamentos_naturais;

-- Uso do banco de dados
USE sistema_medicamentos_naturais;

-- Criação da tabela de medicamentos
CREATE TABLE IF NOT EXISTS medicamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    quantidade INT
);

-- Inserção de dados de exemplo na tabela de medicamentos
INSERT INTO medicamentos (nome, descricao, preco, quantidade) VALUES
('Paracetamol', 'Analgésico e antipirético.', 12.50, 100),
('Dipirona', 'Analgésico e antipirético.', 10.75, 50),
('Ibuprofeno', 'Anti-inflamatório e analgésico.', 20.25, 75),
('Dorflex', 'Analgésico e relaxante muscular.', 15.00, 80),
('Benegrip', 'Analgésico e antigripal.', 18.50, 60),
('Tylenol', 'Analgésico e antipirético.', 14.75, 70),
('Cimegripe', 'Analgésico e antigripal.', 22.00, 45),
('Allegra', 'Anti-histamínico.', 30.50, 55),
('Naldecon', 'Descongestionante nasal.', 25.25, 65),
('Corticoides', 'Anti-inflamatório.', 35.00, 40);

-- Criação da tabela de usuários
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    senha VARCHAR(50) NOT NULL
);

-- Inserção de dados de exemplo na tabela de usuários
INSERT INTO usuarios (nome, username, senha) VALUES
('João Silva', 'joao.silva', 'senha123'),
('Maria Santos', 'maria.santos', 'senha456'),
('Carlos Oliveira', 'carlos.oliveira', 'senha789'),
('Ana Souza', 'ana.souza', 'senha987'),
('Pedro Costa', 'pedro.costa', 'senha654'),
('Mariana Lima', 'mariana.lima', 'senha321');

-- Criação da tabela de histórico de acesso
CREATE TABLE IF NOT EXISTS historico_acesso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    data_acesso DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Inserção de dados de exemplo na tabela de histórico de acesso
INSERT INTO historico_acesso (usuario_id) VALUES
(1), (2), (3), (4), (5);
