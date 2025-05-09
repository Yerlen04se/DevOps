FROM nginx:alpine

RUN apk add --no-cache curl && \
    mkdir -p /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    chown -R nginx:nginx /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

COPY ./website ./
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
