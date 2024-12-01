Documentação do Sistema
Descrição Geral
O sistema apresentado visa gerenciar ações sociais, englobando doações, distribuição de 
recursos, participação de usuários, notificações, e o registro de histórico de atividades. 
Ele está estruturado para permitir o controle eficiente de instituições carentes, usuários 
envolvidos, recursos disponíveis, e categorias de ações realizadas.


Objetivo
Facilitar o gerenciamento de campanhas sociais e doações, garantindo que os recursos 
sejam alocados corretamente às instituições e monitorando as atividades realizadas por 
usuários e organizações.


Entidades e Relacionamentos
1. Usuário
o Representa os indivíduos cadastrados no sistema.
o Possui informações como nome, e-mail, senha, perfil (Admin ou 
Usuário), e data de criação.
o Pode doar recursos, participar de ações sociais, e receber notificações.
2. Ação Social
o Representa uma campanha ou evento social.
o Contém informações como nome, descrição, datas de início e término, e 
está vinculada a uma categoria específica.
3. Categoria de Ação
o Define o tipo de ação social (e.g., educação, saúde, alimentação).
o Relacionada a múltiplas ações sociais.
4. Doação
o Representa as contribuições feitas pelos usuários, podendo ser em 
dinheiro ou recursos.
o Está vinculada a um usuário e a uma ação social.
5. Recurso
o Define os itens físicos disponíveis no sistema, como alimentos, roupas 
ou outros itens.
o Associado a uma ação social.
6. Distribuição
o Registra a alocação de recursos para instituições carentes.
o Está relacionada a recursos, ações sociais, e instituições específicas.
7. Instituição Carente
o Representa as organizações beneficiadas pelas ações sociais.
o Contém informações como nome, endereço, telefone e descrição.
8. Participação
o Registra a presença e o envolvimento de usuários em ações sociais.
o Vincula usuários e ações.
9. Comentário
o Permite que os usuários registrem comentários relacionados a ações 
sociais e doações.
o Está associado a um usuário, ação social, e/ou doação.
10. Notificação
o Gerencia mensagens enviadas para os usuários, informando-os sobre 
atualizações ou eventos.
o Contém status (enviada ou pendente).
11. Histórico de Ações
o Armazena o histórico de atividades realizadas em ações sociais.
o Está vinculado a ações e usuários
