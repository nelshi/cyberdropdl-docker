#!/bin/sh

addgroup -g "$PGID" cyberdrop
adduser -u "$PUID" -G cyberdrop -D cyberdrop

chown -R "$PUID":"$PGID" "$APP_DIR"

umask "$UMASK"

$CUSTOMARGS