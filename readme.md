# Todo List Flask, Docker e SQLite

Este projeto é uma aplicação web de lista de tarefas desenvolvida com **Python + Flask**, utilizando **SQLite** como banco de dados embutido e containerizada com **Docker**.

---

## Objetivos do Projeto

- Demonstrar o uso prático de Docker com Flask.
- Persistir dados com SQLite utilizando volumes Docker.
- Rodar localmente ou em nuvem (ex: AWS EC2 - **Instruções ao Final**).
- Manter a aplicação simples, funcional e didática.

---

## Estrutura do Projeto

 - app.py
 - Dockerfile
 - docker-compose.yml
 - requirements.txt
 - templates/
 - base.html


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
   git clone https://github.com/GrazielyNobre99/Aplicacao-Todo-List-App-com-Docker.git
   cd Aplicacao-Todo-List-App-com-Docker

2. Construa e Execute a Aplicação:

    ```bash
    docker compose up --build

O --buil é necessario apenas na primeira vez em que executar o docker compose.
Nas proximas vezes que for iniciar novamente o ambiente, use sem o --build.

3. Acesse no Navegador

http://localhost:5000

4. Inclua algumas Tarefas para Testar a Aplicação

5. Encerre o Conteiner e em Seguida Inicie, para testar a Persistencia dos Dados.

Se estiver usando Linux, use **sudo** antes dos comandos:
    
    ```bash
    docker compose down
    docker compose up

down vai encerrar, e up vai iniciar. 

6. Verifique se as Tarefas inseridas persistem na Aplicação.

### Para VM na AWS EC2

1. Nas Regras de Entrada da VM crie uma Regra de Entrada para:

- TCP Personalizado
- Porta 5000
- 0.0.0.0/0

Salve a nova regra de entrada.

2. Em seguida no terminal da VM use os seguintes comandos:
    
    ```bash
    docker compose down
    docker compose up

Se estiver com o conteiner em execução pode usar CTRL + C para encerrar.
(Tem a mesma função do docker compose down) 

3. Acesse no Navegador

http://IP-PUBLICO-DA-SUA-VM:5000


### Autores

Projeto adaptado e dockerizado por Antonia Graziely Nobre Moreira e Francisco Jarbas dos Santos Sousa com base no código do Prof.João Marcelo - joaomarceloalencar/devops.