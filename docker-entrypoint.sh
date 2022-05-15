#!/bin/sh

set -x

PORT="${PORT:="80"}"

set +x

sed -i -e "s/BASE_URL/${BASE_URL}/" /etc/nginx/conf.d/default.conf

sed -i -e "s/PORT/${PORT}/" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
