FROM node:14 as base

WORKDIR /app

COPY package*.json ./

RUN npm install

EXPOSE 3000

FROM base as json-server-app

COPY app1.js ./

CMD ["node", "app1.js"]

FROM base as reversed-json-server-app

COPY app2.js ./

CMD ["node", "app2.js"]