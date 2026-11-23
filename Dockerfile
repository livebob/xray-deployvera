FROM teddysun/xray:latest
RUN apk add --no-cache nginx
COPY config.json.template /tmp/config.json.template
COPY nginx.conf.template /tmp/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
