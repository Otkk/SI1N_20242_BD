INSERT INTO ALUNOS (ID_ALU, NOME_ALU, CPF_ALU, DT_NASC_ALU, END_ALU)
VALUES (1, 'Carlos Silva', '12345678901', '1990-03-15', 'Rua A, 123'),
       (2, 'Ana Souza', '23456789012', '1985-07-10', 'Avenida B, 456');

INSERT INTO INSTRUTORES (ID_INST, NOME_INST, CPF_INST, DT_CONTRATO_INST, MOD_INST)
VALUES (1, 'João Mendes', '34567890123', '2020-01-15', 'Musculação'),
       (2, 'Maria Oliveira', '45678901234', '2019-06-01', 'Yoga');

INSERT INTO MODALIDADES (ID_MOD, NOME_MOD, DESC_MOD)
VALUES (1, 'Musculação', 'Treino de resistência muscular'),
       (2, 'Yoga', 'Prática de posturas e respiração');

INSERT INTO MATRICULAS (ID_ALU, ID_MOD)
VALUES (1, 1), 
       (2, 2);

INSERT INTO PLANOS_TREINO (ID_PLANO, DESC_PLANO, ID_ALU, ID_INST)
VALUES (1, 'Plano de treino básico para hipertrofia', 1, 1),
       (2, 'Plano de alongamento e relaxamento', 2, 2);

INSERT INTO AULAS (ID_AULA, DT_HORA_AULA, CAP_MAX_AULA, ID_INST, ID_MOD)
VALUES (1, '2024-11-20 08:00:00', 20, 1, 1),
       (2, '2024-11-21 10:00:00', 15, 2, 2);

INSERT INTO PAGAMENTOS (ID_PAG, DT_PAG, VLR_PAG, STATUS_PAG, ID_ALU)
VALUES (1, '2024-11-05', 150.00, 'Pago', 1),
       (2, '2024-11-10', 100.00, 'Pendente', 2);

INSERT INTO PARTICIPACOES (ID_ALU, ID_AULA)
VALUES (1, 1),
       (2, 2);
