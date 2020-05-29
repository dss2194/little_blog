FROM alpine:3.11.5

EXPOSE 80

RUN apk add --no-cache nginx && mkdir -p /run/nginx

COPY custom.conf /etc/nginx/conf.d/

COPY . /opt/littleblog

CMD ["nginx", "-g", "daemon off;"]