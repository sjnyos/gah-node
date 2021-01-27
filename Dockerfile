FROM node:6.9

ENV APP=/opt/app NODE_ENV=production

RUN mkdir -p $APP

ADD . $APP/

WORKDIR $APP

RUN npm install --production

CMD npm run start
