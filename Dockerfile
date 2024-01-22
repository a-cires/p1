FROM node:10-alpine

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY --chown=node:node . .

USER node

EXPOSE 8080

CMD ["node", "app.js"]
