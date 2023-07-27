FROM node:14

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY app2.js ./

EXPOSE 3001
CMD ["node", "app2.js"]
