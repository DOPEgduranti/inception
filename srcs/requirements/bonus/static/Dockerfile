FROM debian:bullseye

RUN apt-get update -y && apt-get install -y vim nodejs npm

WORKDIR /usr/src/app

RUN npm init -y && npm install express -y

COPY /tools .

EXPOSE 3000

CMD ["node", "server.js"]