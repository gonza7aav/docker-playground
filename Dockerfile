FROM node:fermium-alpine3.10

WORKDIR /app

COPY . .

COPY ./cronfile /var/spool/cron/crontabs/root

CMD [ "crond", "-l", "2", "-f" ]