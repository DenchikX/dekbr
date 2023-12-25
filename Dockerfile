FROM node:14

WORKDIR /app

COPY package.json .
RUN npm install
COPY index.js .

EXPOSE 5050

ENTRYPOINT ["node", "index.js"]

FROM python:3

WORKDIR /app

COPY main.py .

ENTRYPOINT ["python", "main.py"]
