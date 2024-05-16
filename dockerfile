FROM node:18-alpine

# create a app directory
WORKDIR /app

# install app dependencies
COPY package.json ./

# RUN NPM
RUN npm install

# bundle app source
COPY . .

EXPOSE 8000

CMD ["npm","start"]