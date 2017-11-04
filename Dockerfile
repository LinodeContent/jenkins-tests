FROM node:4.8.5-alpine

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY package.json /home/nodejs/app
RUN npm install
COPY . /home/nodejs/app
