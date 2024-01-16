FROM node:18.16.0-alpine3.17

WORKDIR /app

COPY src/package.json src/package-lock.json .

RUN npm install

COPY .  .

EXPOSE 3000

CMD [ "npm", "start"]