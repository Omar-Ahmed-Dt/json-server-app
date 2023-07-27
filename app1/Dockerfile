FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY app1.js ./

EXPOSE 3000

CMD ["node", "app1.js"]
