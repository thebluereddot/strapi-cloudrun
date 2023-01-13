FROM node:16

RUN mkdir /app
WORKDIR /app

COPY . .
RUN rm -rf node_modules
RUN yarn install

EXPOSE 1337

CMD ["yarn", "start"]