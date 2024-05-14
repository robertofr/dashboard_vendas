# Especifique a imagem base
FROM python:3.12

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o conteúdo do diretório atual para o contêiner em /app
COPY . .

# Instale quaisquer pacotes necessários especificados em requisitos.txt
RUN pip install --no-cache-dir -r requirements.txt

# Disponibilize a porta 8501 para o mundo fora deste contêiner
EXPOSE 8501

#Teste se o contêiner está escutando na porta 8501
#HEALTHCHECK CMD curl --fail http://localhost:8501/

#Configura o container para rodar como executável
ENTRYPOINT streamlit run Dashboard.py
