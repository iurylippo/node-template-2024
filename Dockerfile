# Especifica a imagem Node.js na versão 18.18.0
FROM node:18.18.0-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de configuração package.json e yarn.lock
COPY package.json yarn.lock ./

# Instala as dependências do projeto
RUN yarn install

# Copia o restante do código para o container
COPY . .

# Compila o código TypeScript para JavaScript
RUN yarn build

# Expõe a porta do servidor e a porta para debugging
EXPOSE 9230

# Comando para iniciar o container em modo debug
CMD ["node", "dist/main.js"]
