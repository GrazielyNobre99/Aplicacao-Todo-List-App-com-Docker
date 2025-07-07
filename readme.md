# Todo List Flask, Docker e SQLite

Este projeto é uma aplicação web de lista de tarefas desenvolvida com **Python + Flask**, utilizando **SQLite** como banco de dados embutido e containerizada com **Docker**.

---

## Objetivos do Projeto

- Demonstrar o uso prático de Docker com Flask.
- Persistir dados com SQLite utilizando volumes Docker.
- Rodar localmente ou em nuvem (ex: AWS EC2).
- Manter a aplicação simples, funcional e didática.

---

## Estrutura do Projeto

├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── templates/
└── base.html


### Arquivos principais

- `app.py`: Código principal da aplicação Flask com SQLAlchemy e SQLite.
- `Dockerfile`: Arquivo de Configuração - Define a imagem da aplicação com Python e dependências.
- `docker-compose.yml`: Orquestra o container e o volume persistente.
- `requirements.txt`: Lista as bibliotecas utilizadas que serão usadas como dependências.
- `templates/base.html`: Layout da interface da aplicação.

---

## Executando Localmente com Docker

### Pré-requisitos

- Docker instalado (v20 ou superior)
- Docker Compose (v2 embutido no Docker CLI)

### Passos

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio

2. Construa e Execute a Aplicação

O --buil é necessario apenas na primeira vez em que executar o docker compose.
Nas proximas vezes que for iniciar novamente o ambiente, use sem o --build.

docker compose up --build

3. Acesse no Navegador

http://localhost:5000

4. Inclua algumas Tarefas para Testar a Aplicação

5. Para Encerrar a Aplicação e Testar a Persistencia dos Dados

Se estiver usando Linux, use sudo antes do comando:

docker compose down

docker compose up

Verifique se as Tarefas inseridas persistem na Aplicação.