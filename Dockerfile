FROM node


RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /var

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "npm", "start"]
