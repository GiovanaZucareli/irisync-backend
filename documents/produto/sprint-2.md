# Sprint 2
> 08.09.2025 até 26.09.2025

## Objetivo

<p>O objetivo desta sprint é construir o ciclo de vida de conteúdo e a personalização de identidade do usuário. Ao final da sprint, um usuário autenticado poderá personalizar seu perfil com avatar e banner, criar postagens com texto e imagem, e visualizar estes posts tanto em seu próprio perfil quanto em um feed global inicial.</p>

## Metas da Sprint
- Implementar a criação de postagens, incluindo suporte para upload de imagens.
- Desenvolver a funcionalidade completa de edição de perfil (avatar, banner, bio, links).
- Proteger os endpoints da API utilizando o middleware de autenticação JWT desenvolvido na sprint anterior.
- Exibir as postagens criadas na tela de Perfil do usuário e em um Feed global cronológico.
- Integrar a aplicação com um serviço de Object Storage para o armazenamento de mídias.

## Entregáveis
- Aplicativo Flutter compilado (.apk) com novas funcionalidades:
    - Tela de "Editar Perfil" funcional, incluindo upload de imagens.
    - Formulário de "Criar Postagem" com campos de texto e seletor de imagem.
    - Tela de "Perfil" exibindo os posts do próprio usuário.
    - Tela de "Home" exibindo um feed global simples com os posts mais recentes de todos os usuários.

- Backend em Go:
    - Middleware de Autenticação JWT aplicado a todas as rotas que exigem um usuário logado.

- Infraestrutura:
    - Serviço de Object Storage (ex: MinIO) adicionado ao docker-compose.yml para o ambiente de desenvolvimento.

## Não-Metas da Sprint
- Feed personalizado ("seguindo"). O feed será apenas global e cronológico por enquanto.

- Interações com posts (curtidas, comentários, reposts).

- Edição ou exclusão de posts já criados. O foco é na criação.

- Busca, hashtags ou qualquer outro mecanismo de descoberta avançado.
