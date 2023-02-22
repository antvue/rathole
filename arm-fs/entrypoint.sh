#!/bin/sh
set -e

if [ -z "$CONFIG" ]; then
    echo config NOT apply, user default config
    cat /etc/conf/config.toml > /etc/conf/rathole.toml
else
    cat <<EOF > /etc/conf/rathole.toml
$CONFIG
EOF
    echo apply config:
    echo ---------------------------------------
    echo "$CONFIG"
fi

exec "$@"

