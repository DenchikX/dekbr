FROM node:14

WORKDIR /app

COPY package.json .
RUN npm install
COPY index.js .

EXPOSE 5050

ENTRYPOINT ["node", "index.js"]
