FROM node:16-buster
WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn
RUN yarn global add serve
COPY . .

ARG AWS_ENV
RUN yarn build

ENV PORT=80
EXPOSE 80

ENTRYPOINT ["serve", "-s", "build"]