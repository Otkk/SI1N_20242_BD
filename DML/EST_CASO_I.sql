USE EC1_SI1N;

INSERT INTO FORNECEDORES (FORNEC_COD, FORNEC_NOME, FORNEC_RUA, FORNEC_NUMRUA, FORNEC_BAIRRO, FORNEC_CIDADE, FORNEC_ESTADO, FORNEC_PAIS, FORNEC_CODPOSTAL, FORNEC_TELEFONE, FORNEC_CONTATO)
VALUES
(1, 'Fornecedor A', 'Av. Paulista', 1578, 'Bela Vista', 'São Paulo', 'SP', 'Brasil', '01310-200', '(11) 98765-4321', 'contato@fornecedora.com.br'),
(2, 'Fornecedor B', 'Rua XV de Novembro', 456, 'Centro', 'Curitiba', 'PR', 'Brasil', '80020-310', '(41) 97654-3210', 'contato@fornecedorb.com.br'),
(3, 'Fornecedor C', 'Rua dos Andradas', 789, 'Centro Histórico', 'Porto Alegre', 'RS', 'Brasil', '90020-002', '(51) 99876-5432', 'contato@fornecedorc.com.br');

INSERT INTO FILIAIS (FILIAL_COD, FILIAL_NOME, FILIAL_RUA, FILIAL_NUMRUA, FILIAL_BAIRRO, FILIAL_CIDADE, FILIAL_ESTADO, FILIAL_PAIS, FILIAL_CODPOSTAL, FILIAL_CAPACIDADE)
VALUES
(1, 'Filial A', 'Rua das Flores', 120, 'Centro', 'Recife', 'PE', 'Brasil', '50010-150', 'Capacidade de 500 unidades'),
(2, 'Filial B', 'Avenida Getúlio Vargas', 212, 'Funcionários', 'Belo Horizonte', 'MG', 'Brasil', '30112-010', 'Capacidade de 300 unidades'),
(3, 'Filial C', 'Rua Goiás', 340, 'Setor Central', 'Goiânia', 'GO', 'Brasil', '74030-010', 'Capacidade de 700 unidades');

INSERT INTO PRODUTOS (PROD_COD, PROD_NOME, PROD_DESCRICAO, PROD_ESPECTEC, PROD_QUANT, PROD_PRECOUNIT, PROD_UNIDMEDIDA, PROD_ESTOQ_MIN)
VALUES
(1, 'Produto A', 'Descrição do Produto A', 'Especificações do Produto A', 100.000, 50.00, 'UN', 10.000),
(2, 'Produto B', 'Descrição do Produto B', 'Especificações do Produto B', 200.000, 150.00, 'UN', 20.000),
(3, 'Produto C', 'Descrição do Produto C', 'Especificações do Produto C', 150.000, 75.00, 'KG', 15.000);

INSERT INTO PEDIDOS (PED_CODIGO, PED_DATA, PED_HORA, PED_PREVISAO, PED_STATUS, PED_FORNECEDOR)
VALUES
(1, '2024-11-10', '10:30:00', '2024-11-15', 'PENDENTE', 1),
(2, '2024-11-12', '11:00:00', '2024-11-18', 'EM ESPERA', 2),
(3, '2024-11-14', '14:45:00', '2024-11-20', 'CONCLUÍDO', 3);

INSERT INTO RECEBIMENTOS (RECEB_DATA, RECEB_HORA, RECEB_QUANT_PROD, RECEB_CONDICAO, RECEB_PEDIDOS)
VALUES
('2024-11-15', '15:30:00', 100.000, 'Produto em boas condições', 1),
('2024-11-19', '09:00:00', 200.000, 'Produto com embalagem danificada', 2),
('2024-11-21', '12:00:00', 150.000, 'Produto em excelentes condições', 3);

INSERT INTO PEDIDOS_PRODUTOS (PDPR_PEDIDOS, PDPR_PRODUTOS, PDPR_QUANT)
VALUES
(1, 1, 50.000),
(2, 2, 100.000),
(3, 3, 75.000);

INSERT INTO FILIAIS_PRODUTOS (FLPR_FILIAL, FLPR_PRODUTOS, FLPR_QUANT)
VALUES
(1, 1, 40.000),
(2, 2, 60.000),
(3, 3, 80.000);

INSERT INTO FORNECEDORES_PRODUTOS (FRPR_FORNECEDOR, FRPR_PRODUTOS)
VALUES
(1, 1),
(2, 2),
(3, 3);
