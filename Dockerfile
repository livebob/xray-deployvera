FROM teddysun/xray:latest
COPY config.json.template /tmp/config.json.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
