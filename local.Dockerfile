# local.Dockerfile
FROM node:22.13.1

ARG EXPOSE_PORT

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ADD ./ /usr/src/app
RUN npm i

ENV NODE_ENV=local

EXPOSE ${EXPOSE_PORT}

CMD [ "npm", "run", "start" ]