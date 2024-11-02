CREATE SCHEMA EXERCICIO4_DDL;
USE EXERCICIO4_DDL;

CREATE TABLE IF NOT EXISTS ALUNOS (
    ID_ALU INT PRIMARY KEY,
    NOME_ALU VARCHAR(100) NOT NULL,
    CPF_ALU VARCHAR(11) NOT NULL,
    DT_NASC_ALU DATE NOT NULL,
    END_ALU VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS INSTRUTORES (
    ID_INST INT PRIMARY KEY,
    NOME_INST VARCHAR(100) NOT NULL,
    CPF_INST VARCHAR(11) NOT NULL,
    DT_CONTRATO_INST DATE,
    MOD_INST VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS MODALIDADES (
    ID_MOD INT PRIMARY KEY,
    NOME_MOD VARCHAR(100) NOT NULL,
    DESC_MOD TEXT
);

CREATE TABLE IF NOT EXISTS MATRICULAS (
    ID_ALU INT,
    ID_MOD INT,
    PRIMARY KEY (ID_ALU, ID_MOD),
    FOREIGN KEY (ID_ALU) REFERENCES ALUNOS(ID_ALU),
    FOREIGN KEY (ID_MOD) REFERENCES MODALIDADES(ID_MOD)
);

CREATE TABLE IF NOT EXISTS PLANOS_TREINO (
    ID_PLANO INT PRIMARY KEY,
    DESC_PLANO TEXT NOT NULL,
    ID_ALU INT,
    ID_INST INT,
    FOREIGN KEY (ID_ALU) REFERENCES ALUNOS(ID_ALU),
    FOREIGN KEY (ID_INST) REFERENCES INSTRUTORES(ID_INST)
);

CREATE TABLE IF NOT EXISTS AULAS (
    ID_AULA INT PRIMARY KEY,
    DT_HORA_AULA DATETIME NOT NULL,
    CAP_MAX_AULA INT,
    ID_INST INT,
    ID_MOD INT,
    FOREIGN KEY (ID_INST) REFERENCES INSTRUTORES(ID_INST),
    FOREIGN KEY (ID_MOD) REFERENCES MODALIDADES(ID_MOD)
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS (
    ID_PAG INT PRIMARY KEY,
    DT_PAG DATE NOT NULL,
    VLR_PAG DECIMAL(10, 2) NOT NULL,
    STATUS_PAG VARCHAR(10) CHECK (STATUS_PAG IN ('Pago', 'Pendente')),
    ID_ALU INT,
    FOREIGN KEY (ID_ALU) REFERENCES ALUNOS(ID_ALU)
);

CREATE TABLE IF NOT EXISTS PARTICIPACOES (
    ID_ALU INT,
    ID_AULA INT,
    PRIMARY KEY (ID_ALU, ID_AULA),
    FOREIGN KEY (ID_ALU) REFERENCES ALUNOS(ID_ALU),
    FOREIGN KEY (ID_AULA) REFERENCES AULAS(ID_AULA)
);

-- Tabela ALUNOS
ALTER TABLE ALUNOS
ADD TELEFONE_ALU VARCHAR(15);

ALTER TABLE ALUNOS
DROP COLUMN END_ALU;

ALTER TABLE ALUNOS
MODIFY CPF_ALU VARCHAR(14);

ALTER TABLE ALUNOS
CHANGE NOME_ALU NOME_COMPLETO_ALU VARCHAR(100);

-- Tabela INSTRUTORES
ALTER TABLE INSTRUTORES
ADD TELEFONE_INST VARCHAR(15);

ALTER TABLE INSTRUTORES
DROP COLUMN MOD_INST;

ALTER TABLE INSTRUTORES
MODIFY CPF_INST VARCHAR(14);

ALTER TABLE INSTRUTORES
CHANGE NOME_INST NOME_COMPLETO_INST VARCHAR(100);

-- Tabela MODALIDADES
ALTER TABLE MODALIDADES
ADD DURACAO_MOD INT;

ALTER TABLE MODALIDADES
DROP COLUMN DESC_MOD;

ALTER TABLE MODALIDADES
MODIFY NOME_MOD VARCHAR(150);

ALTER TABLE MODALIDADES
CHANGE NOME_MOD NOME_COMPLETO_MOD VARCHAR(150);

-- Tabela MATRICULAS
ALTER TABLE MATRICULAS
ADD DT_MATRICULA DATE;

ALTER TABLE MATRICULAS
DROP COLUMN ID_MOD;

ALTER TABLE MATRICULAS
MODIFY ID_ALU BIGINT;

ALTER TABLE MATRICULAS
CHANGE ID_ALU ALUNO_ID BIGINT;

-- Tabela PLANOS_TREINO
ALTER TABLE PLANOS_TREINO
ADD DT_CRIACAO DATE;

ALTER TABLE PLANOS_TREINO
DROP COLUMN ID_INST;

ALTER TABLE PLANOS_TREINO
MODIFY DESC_PLANO VARCHAR(500);

ALTER TABLE PLANOS_TREINO
CHANGE ID_ALU ALUNO_ID INT;

-- Tabela AULAS
ALTER TABLE AULAS
ADD DURACAO_AULA INT;

ALTER TABLE AULAS
DROP COLUMN ID_MOD;

ALTER TABLE AULAS
MODIFY CAP_MAX_AULA BIGINT;

ALTER TABLE AULAS
CHANGE ID_INST INSTRUTOR_ID INT;

-- Tabela PAGAMENTOS
ALTER TABLE PAGAMENTOS
ADD METODO_PAG VARCHAR(50);

ALTER TABLE PAGAMENTOS
DROP COLUMN STATUS_PAG;

ALTER TABLE PAGAMENTOS
MODIFY VLR_PAG DECIMAL(15, 2);

ALTER TABLE PAGAMENTOS
CHANGE ID_ALU ALUNO_ID INT;

