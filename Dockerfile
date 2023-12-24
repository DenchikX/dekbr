FROM node:14

WORKDIR /app

COPY package.json .
RUN npm install
COPY . .

EXPOSE 5050

CMD ["node", "index.js"]

FROM python:3

WORKDIR /app

COPY . .

CMD ["python", "main.py"]
