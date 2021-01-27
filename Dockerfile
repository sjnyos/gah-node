FROM node:15.6.0-alpine3.10

ENV APP=/opt/app NODE_ENV=production

RUN mkdir -p $APP

ADD . $APP/

WORKDIR $APP

RUN npm install --production

CMD npm run start
