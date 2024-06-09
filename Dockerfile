# Gebruik een officiële Node.js runtime als basisimage
FROM node:14

# Stel de werkdirectory in
WORKDIR /app

# Kopieer package.json en package-lock.json
COPY package*.json ./

# Installeer dependencies
RUN npm install

# Kopieer de rest van de applicatiecode
COPY . .

# Exposeer de poort waarop de app draait
EXPOSE 3000

# Start de applicatie
CMD ["npm", "start"]
