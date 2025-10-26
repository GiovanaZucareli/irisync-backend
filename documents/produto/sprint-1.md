# Sprint 1
> 18.08.2025 até 05.09.2025

## Objetivo
> Entrega do produto funcionando com o básico

<p>O objetivo principal da Sprint 1 é transformar o protótipo de design em um Produto Mínimo Viável (MVP) funcional. Ao final desta sprint, um usuário deverá ser capaz de baixar o aplicativo (build de teste) e realizar o ciclo completo de cadastro e login, com os dados sendo persistidos de forma segura na arquitetura de backend.</p>

## Metas da Sprint
- Desenvolver o fluxo de autenticação (Cadastro e Login) de ponta a ponta, desde o Flutter até o banco de dados.
- Estruturar e implementar a fundação dos microserviços de backend (Api-Gateway, Sql-Gateway).
- Estabelecer a comunicação via gRPC entre os serviços de backend.
- Gerar um build do aplicativo Flutter (APK para Android, por exemplo) que possa ser distribuído para testes internos.

## Não-Metas da Sprint
- Implementação do Feed, Chat, Notificações, Grupos ou Perfil.
- Fluxo de "Esqueci minha senha" ou verificação de e-mail.
- Login com redes sociais (Google, Apple, etc.).
- Deploy em um ambiente de produção na nuvem. O foco é um build para testes e o ambiente local.

## Entregáveis
- Aplicativo Flutter compilado (.apk) contendo:
    - Telas de Login e Registro funcionais, com validação de formulário.
    - Integração com o Api-Gateway para enviar e receber dados.
    - Gerenciamento local do token de autenticação (JWT) após o login.
- Backend em Go:
    - Microserviço Api-Gateway com endpoints REST para POST /v1/users (Registro) e POST /v1/auth/login (Login).
    - Microserviço Sql-Gateway com uma interface gRPC para operações na tabela de usuários.
- Repositório Git com a estrutura de pastas para os 3 projetos (Flutter, Api-Gateway, Sql-Gateway).
- Arquivo docker-compose.yml atualizado para subir toda a stack de desenvolvimento local (PostgreSQL, NATS, Redis, etc.).

## Ferramentas Utilizadas
- Flutter
- Golang
- PostgreSQL


