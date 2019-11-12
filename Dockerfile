FROM node:lts-alpine

ENV TZ=CST-8
EXPOSE 80

RUN apk --no-cache add nginx
WORKDIR /app
CMD ["sh", "/app/start.sh"]

ADD ./ /app
RUN npm install && npm run compile