FROM node:lts-alpine
WORKDIR /app
COPY . ./
ENV PORT 3000
ENV TZ Asia/Shanghai
RUN apk add tzdata && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && apk del tzdata
EXPOSE $PORT
RUN yarn && yarn build
CMD ["yarn", "start:prod"]
