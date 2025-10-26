
# TODO List: Projeto Iris Service

Este documento serve como um guia para o desenvolvimento do projeto, desde a sua concepção até a implementação de funcionalidades avançadas.

## Fase 0: Definição e Planejamento

- [ ] **Definir o Core Business:** Qual problema o serviço resolve?
- [ ] **Listar as Funcionalidades (Features):** Quais são as principais funcionalidades (ex: CRUD de usuários, etc.)?
- [ ] **Definir as Regras de Negócio:** Quais são as regras que governam as funcionalidades?
- [ ] **Desenhar a Arquitetura Inicial:** Baseado no `diagrama-v1.png`, detalhar os componentes e suas interações.
- [ ] **Escolher a Stack Tecnológica:** Linguagem, framework, banco de dados, etc.

## Fase 1: Fundamentos do Projeto (Core)

- [ ] **Estrutura de Diretórios:** Organizar o projeto em pastas (ex: `cmd`, `internal`, `pkg`).
- [ ] **Versionamento com Git:** Iniciar o repositório e definir uma estratégia de branches (ex: GitFlow).
- [ ] **Gerenciamento de Dependências:** (ex: Go Modules, Pipenv, etc.).
- [ ] **Configuração Centralizada:** Criar um sistema de configuração para gerenciar variáveis de ambiente (`.env`).
- [ ] **Dockerização:** Criar um `Dockerfile` para a aplicação.
- [ ] **Comandos Iniciais:** Criar um `Makefile` ou `package.json` com scripts para build, run, test, etc.

## Fase 2: Desenvolvimento da Aplicação (API)

- [ ] **Definir os Endpoints da API:** Listar todos os endpoints, métodos HTTP, payloads e retornos.
- [ ] **Implementar o Servidor HTTP:** (ex: com Gin, Express, etc.).
- [ ] **Middlewares Essenciais:** Criar middlewares para logging, CORS, etc.
- [ ] **Conexão com o Banco de Dados:** Implementar a conexão com MongoDB e/ou PostgreSQL.
- [ ] **Implementar as Regras de Negócio:** Codificar a lógica principal da aplicação.
- [ ] **Validação de Dados:** Adicionar validação para os dados de entrada (JSON validation).

## Fase 3: Qualidade e Testes

- [ ] **Testes Unitários:** Cobrir as regras de negócio e funções críticas.
- [ ] **Testes de Integração:** Testar a interação entre os componentes (ex: API e banco de dados).
- [ ] **Linter e Formatter:** Configurar ferramentas para garantir a qualidade e padronização do código.

## Fase 4: Deploy e Infraestrutura (CI/CD)

- [ ] **Pipeline de Integração Contínua (CI):** Automatizar a execução de testes e build a cada commit.
- [ ] **Pipeline de Entrega Contínua (CD):** Automatizar o deploy da aplicação em um ambiente (ex: desenvolvimento, produção).
- [ ] **Health Check:** Criar um endpoint `/health` para verificar a saúde da aplicação.

## Fase 5: Escalabilidade e Resiliência

- [ ] **Load Balancer:** Configurar um balanceador de carga para distribuir o tráfego.
- [ ] **Cache:** Implementar uma estratégia de cache para dados frequentemente acessados.
- [ ] **Circuit Breaker:** Implementar o padrão para evitar falhas em cascata.
- [ ] **Retry e Timeout:** Adicionar resiliência a chamadas de serviços externos.

## Fase 6: Segurança

- [ ] **Autenticação e Autorização:** Implementar um sistema de login (ex: JWT).
- [ ] **Rate Limiting:** Proteger a API contra abuso.
- [ ] **WAF (Web Application Firewall):** Configurar um firewall para proteção contra ataques comuns.

## Fase 7: Observabilidade

- [ ] **Logging Estruturado:** Adotar um formato de log que facilite a busca e análise (ex: JSON).
- [ ] **Métricas:** Coletar métricas da aplicação (ex: tempo de resposta, uso de CPU/memória).
- [ ] **Tracing Distribuído:** Rastrear requisições através de múltiplos serviços.
- [ ] **Dashboards e Alertas:** Criar painéis para visualização das métricas e configurar alertas.

## Fase 8: Tópicos Avançados

- [ ] **Documentação da API (Swagger):** Gerar documentação interativa para a API.
- [ ] **Service Discovery:** Implementar um mecanismo para que os serviços se encontrem dinamicamente.
- [ ] **API Gateway:** Centralizar o acesso às APIs e aplicar políticas transversais.
- [ ] **Comunicação Assíncrona (Queue):** Usar filas para processamento de tarefas em background.
- [ ] **Outros Protocolos:** Explorar o uso de gRPC ou WebSockets se necessário.
