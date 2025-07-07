# Usa imagem leve do Python
FROM python:3.10-slim

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos para o container
COPY . .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta padrão do Flask
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
