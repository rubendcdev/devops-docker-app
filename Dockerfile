# Imagen base
FROM node:18

# Crear el directorio de trabaho
WORKDIR /usr/src/app

# Copiar archivos
COPY package*.json ./
RUN npm install

COPY . .

# Exponer puerto
EXPOSE 3000

# Comando principal
CMD [ "node", "app.js" ]