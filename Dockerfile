FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production 

COPY . .

EXPOSE 3000

USER = node

CMD ["node", "index.js"]