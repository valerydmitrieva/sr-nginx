#!/bin/sh

set -x

export BASE_DOMAIN="${BASE_DOMAIN:="example.com"}"

set +x

sed -i -e "s/BASE_DOMAIN/${BASE_DOMAIN}/" /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
