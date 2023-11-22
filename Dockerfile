FROM node:21-alpine3.17

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . 

RUN npm run build

EXPOSE 4050

CMD [ "npm", "start" ]