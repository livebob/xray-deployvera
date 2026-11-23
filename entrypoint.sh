#!/bin/sh
PORT=${PORT:-3000}
UUID=924cd7c9-8ce7-4ee1-ac27-a6e583359a19
sed -e "s/__PORT__/10000/g" -e "s/__UUID__/$UUID/g" /tmp/config.json.template > /tmp/config.json
sed -e "s/__PORT__/$PORT/g" /tmp/nginx.conf.template > /tmp/nginx.conf
xray run -c /tmp/config.json &
exec nginx -c /tmp/nginx.conf -g 'daemon off;'
