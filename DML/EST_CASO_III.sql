USE EXERCICIO3_DDL;

INSERT INTO CLIENTES (ID_CLI, CNPJ_CLI, RAZAO_CLI, RAMO_CLI, DT_CAD_CLI, CONTATO_CLI)
VALUES
(1, '12345678000191', 'Empresa A', 'Tecnologia', '2023-01-15', 'João A. Silva'),
(2, '98765432000182', 'Empresa B', 'Varejo', '2022-06-20', 'Maria B. Souza'),
(3, '11111111000172', 'Empresa C', 'Construção', '2021-10-10', 'Carlos C. Oliveira');

INSERT INTO TEL_CLIENTES (ID_CLI, TEL_CLI)
VALUES
(1, '(11) 99999-9999'),
(2, '(21) 98888-8888'),
(3, '(31) 97777-7777');

INSERT INTO EMPREGADOS (ID_EMP, NOME_EMP, CARGO_EMP, SAL_EMP, DT_ADM_EMP, QUALIF_EMP)
VALUES
(1, 'João da Silva', 'Gerente', 8000.00, '2020-01-01', 'MBA em Gestão'),
(2, 'Maria Souza', 'Analista', 4500.00, '2021-06-15', 'Certificação PMP'),
(3, 'Pedro Oliveira', 'Técnico', 3000.00, '2022-03-10', 'Curso Técnico em Eletrônica');

INSERT INTO TEL_EMPREGADOS (ID_EMP, TEL_EMP)
VALUES
(1, '(11) 91234-5678'),
(2, '(21) 99876-5432'),
(3, '(31) 98765-4321');

INSERT INTO EMPRESAS (CNPJ_EMP, RAZAO_EMP, CONTATO_EMP)
VALUES
('33333333000153', 'Empresa D', 'contato@empresaD.com.br'),
('44444444000114', 'Empresa E', 'contato@empresaE.com.br'),
('55555555000135', 'Empresa F', 'contato@empresaF.com.br');

INSERT INTO FORNECEDORES (CNPJ_FORN, RAZAO_FORN, CONTATO_FORN)
VALUES
('66666666000176', 'Fornecedor X', 'fornecedorX@contato.com.br'),
('77777777000197', 'Fornecedor Y', 'fornecedorY@contato.com.br'),
('88888888000158', 'Fornecedor Z', 'fornecedorZ@contato.com.br');

INSERT INTO TIPO_ENDERECO (ID_TIP_END, NOME_TIP_END)
VALUES
(1, 'Residencial'),
(2, 'Comercial'),
(3, 'Industrial');

INSERT INTO ENDERECOS (ID_END, NUM_END, LOGR_END, COMPL_END, CEP_END, BAIRRO_END, CIDADE_END, ESTADO_END, ID_TIP_END)
VALUES
(1, 123, 'Rua A', 'Apto 101', '12345-678', 'Bairro A', 'São Paulo', 'SP', 1),
(2, 456, 'Avenida B', 'Sala 202', '87654-321', 'Bairro B', 'Rio de Janeiro', 'RJ', 2),
(3, 789, 'Estrada C', 'Galpão 3', '11223-445', 'Bairro C', 'Belo Horizonte', 'MG', 3);

INSERT INTO ENCOMENDAS (NUM_ENC, DT_INCL_ENC, VLR_TOT_ENC, VLR_DESC_ENC, VLR_LIQ_ENC, ID_FORMA_PAG, QT_PARC_ENC, ID_CLI)
VALUES
(1, '2024-11-10', 5000.00, 500.00, 4500.00, 1, 5, 1),
(2, '2024-11-11', 10000.00, 1000.00, 9000.00, 2, 10, 2),
(3, '2024-11-12', 3000.00, 300.00, 2700.00, 3, 3, 3);

INSERT INTO PRODUTOS (ID_PROD, NOME_PROD, COR_PROD, DIM_PROD, PESO_PROD, PRECO_PROD, TMP_FAB_PROD, DESENHO_PROD, HORAS_MO_PROD)
VALUES
(1, 'Produto A', 'Vermelho', '10x10x10', 1.5, 100.00, 10, NULL, 2),
(2, 'Produto B', 'Azul', '20x20x20', 2.0, 200.00, 15, NULL, 3),
(3, 'Produto C', 'Verde', '30x30x30', 3.0, 300.00, 20, NULL, 5);

INSERT INTO TIPOS_COMPONENTE (ID_TIP_COMP, NOME_TIP_COMP)
VALUES
(1, 'Eletrônico'),
(2, 'Mecânico'),
(3, 'Químico');

INSERT INTO COMPONENTES (ID_COMP, NOME_COMP, QTD_ESTOQUE_COMP, PRECO_UN_COMP, UNID_COMP, ID_TIP_COMP)
VALUES
(1, 'Componente A', 100, 50.00, 'UN', 1),
(2, 'Componente B', 200, 30.00, 'UN', 2),
(3, 'Componente C', 300, 20.00, 'UN', 3);

INSERT INTO MAQUINAS (ID_MAQ, TMP_VIDA_MAQ, DT_COMPRA_MAQ, DT_FIM_GAR_MAQ)
VALUES
(1, 10000, '2021-01-01', '2023-01-01'),
(2, 20000, '2022-02-02', '2024-02-02'),
(3, 30000, '2023-03-03', '2025-03-03');

INSERT INTO REC_ESPECIFICOS (ID_RE, QTD_NEC_RE, UNID_RE, TMP_USO_RE, HORAS_MO_RE)
VALUES
(1, 5, 'UN', 10, 2),
(2, 10, 'UN', 15, 3),
(3, 15, 'UN', 20, 5);

INSERT INTO REG_MANUT (ID_REG_MAN, DT_MAN, DESC_MAN, ID_MAQ)
VALUES
(1, '2024-10-01', 'Troca de peças', 1),
(2, '2024-10-15', 'Lubrificação', 2),
(3, '2024-11-01', 'Manutenção preventiva', 3);

INSERT INTO REG_SUPRIMENTOS (ID_REG_SUP, QTD_SUP, DT_NEC_SUP, ID_COMP)
VALUES
(1, 50, '2024-11-10', 1),
(2, 100, '2024-11-11', 2),
(3, 150, '2024-11-12', 3);
