#!/bin/sh
set -e

if [ "$1" = 'runserver' ]; then
    if [ "$NODE_ENV" = 'development' ]; then
        echo "Running development server"
        exec su-exec mighty yarn run start
    else
        exec su-exec mighty node server.js
    fi
fi

exec "$"
