#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6374472f-c24a-41dc-9b8f-36ffa77aa859"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

