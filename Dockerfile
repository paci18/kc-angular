### STAGE 1: Build ###
FROM node:14 AS build
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
CMD /usr/src/app/node_modules/.bin/ng serve  
