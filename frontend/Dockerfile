FROM node:10-alpine

ENV APP_DIR /app
ENV NPM_CONFIG_LOGLEVEL warn

RUN addgroup -S mighty && adduser -S -G mighty mighty

RUN apk add --no-cache 'su-exec>=0.2'

WORKDIR $APP_DIR

COPY package.json yarn.lock $APP_DIR/

RUN yarn install && chown -R mighty:mighty $APP_DIR/node_modules && yarn cache clean

COPY . $APP_DIR

RUN yarn build \
    && chown -R mighty:mighty $APP_DIR/build

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["runserver"]]