FROM nginx:alpine

COPY nginx.conf.template /etc/nginx/nginx.conf.template

CMD ["/bin/sh", "-c", "envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
