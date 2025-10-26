# Irisync :: The Axon Path.

## 1. Conceito do Projeto

iriSYNC é uma plataforma de rede social projetada para conectar pessoas de diversas culturas através de interesses e paixões em comum. O objetivo é oferecer um ambiente amigável e intuitivo, onde a criação de conexões genuínas e a geração de conteúdo autêntico aconteçam de forma fluida e descomplicada.

Além de seu propósito como produto, este projeto possui um objetivo técnico fundamental: servir como um campo de aprendizado avançado. Ele explora um ecossistema tecnológico robusto e escalável, abrangendo desde o desenvolvimento de microserviços no backend até a infraestrutura de orquestração, representando um desafio completo e flexível para a implementação de novas funcionalidades.

## 2. Stack de Tecnologias

A arquitetura do projeto foi desenhada para ser robusta, escalável e resiliente, utilizando as seguintes tecnologias:

| Categoria | Tecnologia | Propósito Principal |
| :--- | :--- | :--- |
| **Design e Prototipação** | Figma | Ferramenta de design de interface (UI) e experiência do usuário (UX) para criar e prototipar as telas da aplicação.|
| **Cliente (Mobile)** | Flutter | Framework para desenvolvimento de aplicações multiplataforma (iOS, Android) com um único código-fonte em Dart. |
| **Infraestrutura** | Kubernetes | Orquestração de contêineres para automação, escalabilidade e gerenciamento. |
| | Docker | Contêinerização dos serviços para garantir consistência entre ambientes. |
| | AWS S3 / MinIO | Armazenamento de objetos. AWS S3 para o ambiente de produção e MinIO para desenvolvimento local (compatível com a API S3). |
| **Proxy Reverso** | Envoy | Roteamento de requisições, segurança e observabilidade na borda da aplicação. |
| **Backend** | Golang | Linguagem principal para construção de microserviços performáticos. |
| | PostgreSQL | Banco de dados relacional para dados estruturados e críticos (usuários, perfis). |
| | MongoDB | Banco de dados NoSQL para dados flexíveis e dinâmicos (posts, comentários, seguidores). |
| | Redis | Cache de alta velocidade e armazenamento de dados voláteis (sessões, tokens, rate limiting). |
| | NATS | Sistema de mensageria para comunicação assíncrona e notificações em tempo real. |
| **Ferramentas** | SQLc | Geração de código Go type-safe a partir de queries SQL. |
| | gRPC | Comunicação de alta performance entre microserviços. |
| | Makefile | Automação de tarefas comuns de desenvolvimento e build. |
## 3. Repositorios

O projeto adota uma abordagem multi-repo, onde cada serviço ou cliente principal é mantido em seu próprio repositório. Essa estratégia foi escolhida para promover a separação de responsabilidades, facilitar a manutenção independente de cada componente e permitir que equipes diferentes trabalhem em paralelo com mais autonomia.

A comunicação entre os componentes segue um fluxo claro: os clientes (Flutter e Frontend Web) interagem exclusivamente com o Api-Gateway, que por sua vez orquestra as chamadas para os serviços internos, como o Data-Gateway.


| Repositorio | Link | Descrição |
| :--- | :--- | :--- |
| IriSync Flutter	 | [iris-flutter](https://github.com/ZeroPirata/iris-flutter) |Repositório do cliente mobile. Desenvolvido em Flutter/Dart, é responsável por toda a interface de usuário (UI) e experiência do usuário (UX) nas plataformas iOS e Android. |
| IriSync Frontend	 | [iris-frontend](https://github.com/ZeroPirata/iris-front) | Repositório do cliente web. Responsável pela interface web da plataforma, consumindo as mesmas APIs que o aplicativo Flutter para garantir uma experiência consistente. (Tecnologia a ser definida, ex: React, Vue, etc.) |
| IriSync Api Gateway	 | [iris-api-gateway](https://github.com/ZeroPirata/iris-api-gateway) | Serviço de borda (Edge Service) e o único ponto de entrada para os clientes. Implementado em Go, ele expõe uma API RESTful pública, lida com autenticação (JWT), validação de requisições e orquestra a comunicação com os serviços internos via gRPC. |
| IriSync Service Gateway	 | [iris-service-gateway](https://github.com/ZeroPirata/iris-service-gateway) | Serviço de acesso a dados (Data Access Layer). Implementado em Go, ele expõe uma interface gRPC interna e abstrai toda a complexidade da comunicação com as diferentes fontes de dados (PostgreSQL, MongoDB, Redis). É o único serviço que interage diretamente com os bancos. (Sugestão: renomear para iris-data-gateway para refletir seu papel com múltiplos bancos de dados). |