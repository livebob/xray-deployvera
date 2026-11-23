#!/bin/sh
PORT=${PORT:-8080}
UUID=924cd7c9-8ce7-4ee1-ac27-a6e583359a19
sed -e "s/__PORT__/$PORT/g" -e "s/__UUID__/$UUID/g" /tmp/config.json.template > /tmp/config.json
exec xray run -c /tmp/config.json
