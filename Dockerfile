FROM node:14-alpine

ENV STARTMODE production

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install

EXPOSE 3000

CMD [ "sh", "-c", "npm run ${STARTMODE}" ]