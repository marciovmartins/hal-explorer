FROM node:21-alpine
WORKDIR /app

COPY package.json /app
COPY yarn.lock /app
RUN yarn install

COPY . /app

EXPOSE 4200
CMD ["yarn", "ng", "serve", "--host=0.0.0.0"]
