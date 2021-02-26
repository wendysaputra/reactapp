FROM node:alpine
 
WORKDIR /usr/src/app
 
COPY package*.json ./
COPY package-lock.json ./

RUN npm install
 
COPY . .
 
EXPOSE 8083
 
CMD [ "npm", "start" ]

#docker build -t reactapp:2.0 .