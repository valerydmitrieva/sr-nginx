FROM nginx:1.20.2-alpine

COPY config/default.conf /etc/nginx/conf.d/default.conf

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]