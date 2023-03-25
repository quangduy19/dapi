FROM node:16.15.0-alpine
 
WORKDIR /user/src/app

COPY package*.json ./

RUN yarn install

COPY . .
 
RUN yarn build

EXPOSE 443

CMD [ "node", "dist/main.js" ]