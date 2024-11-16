USE EXERCICIO2_DDL;

INSERT INTO GRUPOS (ID_GRUPO, NOME_GRUPO, DESCRICAO)
VALUES
(1, 'Tecnologia', 'Grupo focado em discussões sobre tecnologia'),
(2, 'Música', 'Grupo para amantes de música'),
(3, 'Esportes', 'Grupo sobre esportes em geral');

INSERT INTO USUARIOS (ID_USUARIO, NOME_USUARIO, SOBRENOME_USUARIO, EMAIL_USUARIO)
VALUES
(1, 'João', 'Silva', 'joao.silva@email.com'),
(2, 'Maria', 'Fernandes', 'maria.fernandes@email.com'),
(3, 'Pedro', 'Souza', 'pedro.souza@email.com');

INSERT INTO POSTAGENS (ID_POST, TEXTO_POST, IMAGEM_POST, DATAHORA_POST, USUARIO_POST)
VALUES
(1, 'A tecnologia está avançando rápido!', NULL, '2024-11-15 10:00:00', 1),
(2, 'Alguém já ouviu o novo álbum?', NULL, '2024-11-16 14:30:00', 2),
(3, 'O campeonato deste ano está emocionante!', NULL, '2024-11-16 16:00:00', 3);

INSERT INTO COMENTARIOS (ID_COMENTARIO, TEXTO_COMENTARIO, DATAHORA_COMENTARIO, USUARIO_COMENTARIO, POST_COMENTARIO)
VALUES
(1, 'Concordo totalmente, está muito rápido!', '2024-11-15 10:15:00', 2, 1),
(2, 'Ainda não ouvi, mas estou curioso!', '2024-11-16 15:00:00', 1, 2),
(3, 'O campeonato está bem do bacaninha!', '2024-11-16 16:30:00', 2, 3);

INSERT INTO USUARIOS_GRUPOS (UG_USUARIO, UG_GRUPO)
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO USUARIOS_SEGUIDORES (US_USUARIO, US_SEGUIDOR)
VALUES
(1, 2),
(2, 3),
(3, 1);
