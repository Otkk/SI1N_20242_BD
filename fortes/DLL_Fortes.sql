-- Criação do banco de dados
CREATE DATABASE SolucaoProblema;
USE SolucaoProblema;

-- Criação da tabela Usuario
CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    perfil ENUM('Admin', 'Usuario') NOT NULL,
    data_criacao DATE NOT NULL,
    Doacao_id_doacao INT,
    Participacao_id_participacao INT,
    Notificacao_id_notificacao INT
);

-- Criação da tabela Acao_Social
CREATE TABLE Acao_Social (
    id_acao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    Categoria_id_categoria INT,
    FOREIGN KEY (Categoria_id_categoria) REFERENCES Categoria_Acao(id_categoria)
);

-- Criação da tabela Categoria_Acao
CREATE TABLE Categoria_Acao (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criação da tabela Doacao
CREATE TABLE Doacao (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('Dinheiro', 'Recurso') NOT NULL,
    valor DECIMAL(10, 2),
    quantidade INT,
    data_doacao DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_acao INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);

-- Criação da tabela Recurso
CREATE TABLE Recurso (
    id_recurso INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('Alimento', 'Roupa', 'Outros') NOT NULL,
    valor DECIMAL(10, 2),
    quantidade INT,
    id_acao INT NOT NULL,
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);

-- Criação da tabela Distribuicao
CREATE TABLE Distribuicao (
    id_distribuicao INT AUTO_INCREMENT PRIMARY KEY,
    data_distribuicao DATE NOT NULL,
    recurso ENUM('Alimento', 'Roupa', 'Outros'),
    id_recurso INT NOT NULL,
    id_instituicao INT NOT NULL,
    id_acao INT NOT NULL,
    FOREIGN KEY (id_recurso) REFERENCES Recurso(id_recurso),
    FOREIGN KEY (id_instituicao) REFERENCES Instituicao_Carente(id_instituicao),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);

-- Criação da tabela Instituicao_Carente
CREATE TABLE Instituicao_Carente (
    id_instituicao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    descricao TEXT
);

-- Criação da tabela Participacao
CREATE TABLE Participacao (
    id_participacao INT AUTO_INCREMENT PRIMARY KEY,
    data_participacao DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_acao INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao)
);

-- Criação da tabela Comentario
CREATE TABLE Comentario (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    comentario TEXT NOT NULL,
    data_comentario DATE NOT NULL,
    id_usuario INT NOT NULL,
    id_acao INT NOT NULL,
    id_doacao INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao),
    FOREIGN KEY (id_doacao) REFERENCES Doacao(id_doacao)
);

-- Criação da tabela Notificacao
CREATE TABLE Notificacao (
    id_notificacao INT AUTO_INCREMENT PRIMARY KEY,
    mensagem TEXT NOT NULL,
    data_envio DATE NOT NULL,
    status ENUM('Enviada', 'Pendente') NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Criação da tabela Historico_Acoes
CREATE TABLE Historico_Acoes (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    data_acao DATE NOT NULL,
    id_acao INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_acao) REFERENCES Acao_Social(id_acao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
